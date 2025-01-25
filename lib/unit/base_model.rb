# frozen_string_literal: true

module Unit
  # rubocop:disable Style/CaseEquality

  # @private
  #
  module Converter
    # @private
    # @param spec [Proc, Class, Unit::Converter, Hash]
    #
    # @return [Proc]
    #
    def self.type_info(spec)
      case spec
      in Hash
        type_info(spec.values_at(:const, :enum, :union).find { !_1.nil? })
      in Proc
        spec
      in Class | Unit::Converter
        -> { spec }
      in true | false
        -> { Unit::BooleanModel }
      in NilClass | Symbol | Integer | Float
        -> { spec.class }
      end
    end

    # @private
    #
    # Based on `target`, transform `value` into `target`, to the extent possible:
    #
    # 1. if the given `value` conforms to `target` already, return the given `value`
    # 2. if it's possible and safe to convert the given `value` to `target`, then the converted value
    # 3. otherwise, the given `value` unaltered
    #
    # @param target [Class, Unit::Converter]
    # @param value [Object]
    #
    # @return [Object]
    #
    def self.coerce(target, value)
      case target
      in Unit::Converter
        target.coerce(value)
      in Class
        case target
        in -> { _1 <= Unit::Converter }
          target.coerce(value)
        in -> { _1 <= NilClass }
          nil
        in -> { _1 <= Integer }
          value.is_a?(Numeric) ? Integer(value) : value
        in -> { _1 <= Float }
          value.is_a?(Numeric) ? Float(value) : value
        in -> { _1 <= Date || _1 <= Time }
          value.is_a?(String) ? target.parse(value) : value
        in -> { _1 <= Symbol }
          value.is_a?(String) ? value.to_sym : value
        in -> { _1 <= String }
          value.is_a?(Symbol) ? value.to_s : value
        else
          value
        end
      end
    end

    # @private
    #
    # @param target [Class, Unit::Converter]
    # @param value [Object]
    #
    # @return [Object]
    #
    def self.dump(target, value)
      case target
      in Unit::Converter | -> { _1.is_a?(Class) && _1.include?(Unit::Converter) }
        target.dump(value)
      else
        value
      end
    end

    # @private
    #
    # The underlying algorithm for computing maximal compatibility is subject to future improvements.
    #
    # Similar to `#.coerce`, used to determine the best union variant to decode into.
    # 1. determine if strict-ish coercion is possible
    # 2. return either result of successful coercion or if loose coercion is possible
    # 3. return a score for recursively tallied count for fields that can be coerced
    #
    # @param target [Class, Unit::Converter]
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def self.try_strict_coerce(target, value)
      case target
      in Converter
        target.try_strict_coerce(value)
      in Class
        case [target, value]
        in [-> { _1 <= Converter }, _]
          target.try_strict_coerce(value)
        in [-> { _1 <= NilClass }, _]
          [true, nil, value.nil? ? 1 : 0]
        in [-> { _1 <= Integer }, Numeric]
          [true, Integer(value), 1]
        in [-> { _1 <= Float }, Numeric]
          [true, Float(value), 1]
        in [-> { _1 <= Date || _1 <= Time }, String]
          Unit::Util.suppress(ArgumentError, Date::Error) do
            return [true, target.parse(value), 1]
          end
          [false, false, 0]
        in [-> { _1 <= String }, Symbol]
          [true, value.to_s, 1]
        in [_, ^target]
          [true, value, 1]
        else
          [false, false, 0]
        end
      end
    end
  end

  # @private
  #
  # When we don't know what to expect for the value.
  #
  class Unknown
    include Unit::Converter
    # rubocop:disable Lint/UnusedMethodArgument

    private_class_method :new

    # @param other [Object]
    #
    # @return [Boolean]
    def self.===(other) = true

    # @private
    #
    # @param value [Object]
    #
    # @return [Object]
    def self.coerce(value) = value

    class << self
      alias_method :dump, :coerce
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    def self.try_strict_coerce(value)
      # prevent unknown variant from being chosen during the first coercion pass
      [false, true, 0]
    end

    # rubocop:enable Lint/UnusedMethodArgument
  end

  # @private
  #
  # Ruby has no Boolean class; this is something for models to refer to.
  #
  class BooleanModel
    include Unit::Converter

    private_class_method :new

    # @param other [Object]
    #
    # @return [Boolean]
    #
    def self.===(other) = other == true || other == false

    # @private
    #
    # @param value [Boolean, Object]
    #
    # @return [Boolean, Object]
    #
    def self.coerce(value) = value

    class << self
      alias_method :dump, :coerce
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def self.try_strict_coerce(value)
      case value
      in true | false
        [true, value, 1]
      else
        [false, false, 0]
      end
    end
  end

  # @private
  #
  # A value from among a specified list of options. OpenAPI enum values map to
  # Ruby values in the SDK as follows:
  # boolean => true | false
  # integer => Integer
  # float => Float
  # string => Symbol
  # We can therefore convert string values to Symbols, but can't convert other
  # values safely.
  #
  class Enum
    include Unit::Converter

    private_class_method :new

    # @param other [Object]
    #
    # @return [Boolean]
    #
    def self.===(other) = values.include?(other)

    # @private
    #
    # @param value [Symbol, String, Object]
    #
    # @return [Symbol, Object]
    #
    def self.coerce(value)
      case value
      in String
        value.to_sym
      else
        value
      end
    end

    class << self
      alias_method :dump, :coerce
    end

    # @private
    #
    # @param target [Class, Unit::Converter]
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def self.try_strict_coerce(value)
      return [true, value, 1] if values.include?(value)

      case value
      in String if values.include?(val = value.to_sym)
        [true, val, 1]
      else
        case [value, values.first]
        in [true | false, true | false] | [Integer, Integer] | [Symbol | String, Symbol]
          [false, true, 0]
        else
          [false, false, 0]
        end
      end
    end

    # @return [Array<Symbol>] All of the valid Symbol values for this enum.
    def self.values
      @values ||= constants.map { |c| const_get(c) }
    end

    # @private
    #
    # guard against thread safety issues by instantiating `@values`
    #
    # @return [void]
    #
    private_class_method def self.finalize! = values
  end

  # @private
  #
  class Union
    include Unit::Converter
    # rubocop:disable Style/NumberedParametersLimit
    # rubocop:disable Style/HashEachMethods

    # @param other [Object]
    #
    # @return [Boolean]
    #
    def self.===(other)
      known_variants.any? do |_, variant_fn|
        variant_fn.call === other
      end
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Class, RubyModuleName::Converter, nil]
    #
    private_class_method def self.resolve_variant(value)
      case [@discriminator, value]
      in [_, Unit::BaseModel]
        value.class
      in [Symbol, Hash]
        key =
          if value.key?(@discriminator)
            value.fetch(@discriminator)
          elsif value.key?((discriminator = @discriminator.to_s))
            value.fetch(discriminator)
          end

        key = key.to_sym if key.is_a?(String)
        _, resolved = known_variants.find { |k,| k == key }
        resolved.nil? ? Unit::Unknown : resolved.call
      else
        nil
      end
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Object]
    #
    def self.coerce(value)
      if (variant = resolve_variant(value))
        return Converter.coerce(variant, value)
      end

      matches = []

      known_variants.each do |_, variant_fn|
        variant = variant_fn.call

        case Converter.try_strict_coerce(variant, value)
        in [true, coerced, _]
          return coerced
        in [false, true, score]
          matches << [score, variant]
        in [false, false, _]
          nil
        end
      end

      _, variant = matches.sort! { _2.first <=> _1.first }.find { |score,| !score.zero? }
      variant.nil? ? value : Converter.coerce(variant, value)
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Object]
    #
    def self.dump(value)
      if (variant = resolve_variant(value))
        return Converter.dump(variant, value)
      end

      known_variants.each do |_, variant_fn|
        variant = variant_fn.call
        if variant === value
          return Converter.dump(variant, value)
        end
      end
      value
    end

    # @private
    #
    # @param target [Class, Unit::Converter]
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def self.try_strict_coerce(value)
      # TODO(ruby) this will result in super linear decoding behaviour for nested unions
      # follow up with a decoding context that captures current strictness levels
      if (variant = resolve_variant(value))
        return Converter.try_strict_coerce(variant, value)
      end

      coercible = false
      max_score = 0

      known_variants.each do |_, variant_fn|
        variant = variant_fn.call

        case Converter.try_strict_coerce(variant, value)
        in [true, coerced, score]
          return [true, coerced, score]
        in [false, true, score]
          coercible = true
          max_score = [max_score, score].max
        in [false, false, _]
          nil
        end
      end

      [false, coercible, max_score]
    end

    # @private
    #
    # @return [Array<Array(Symbol, Proc)>] All of the specified known variants info for this union.
    #
    private_class_method def self.known_variants
      @known_variants ||= []
    end

    # @private
    #
    # @return [Array<Object>] All of the specified known variants for this union.
    #
    private_class_method def self.variants
      @known_variants.map { |_, variant_fn| variant_fn.call }
    end

    # @private
    #
    # @param variant [Proc, Object]
    # @param key [Symbol, nil]
    #
    # @return [void]
    #
    private_class_method def self.discriminator(property)
      case property
      in Symbol
        @discriminator = property
      end
    end

    # @private
    #
    # @param key [Symbol, Unit::Converter, Proc]
    # @param variant [Proc, Object]
    # @param key [Symbol, nil]
    #
    # @return [void]
    #
    private_class_method def self.variant(key, spec = {})
      variant_info =
        case key
        in Symbol
          [key, Unit::Converter.type_info(spec)]
        in Proc | Class | Unit::Converter | Hash
          [nil, Unit::Converter.type_info(key)]
        end

      known_variants << variant_info
    end

    # rubocop:enable Style/HashEachMethods
    # rubocop:enable Style/NumberedParametersLimit
  end

  # @private
  #
  # Array of items of a given type.
  #
  class ArrayOf
    include Unit::Converter

    private_class_method :new

    # @private
    #
    def self.[](...) = new(...)

    # @param other [Object]
    #
    # @return [Boolean]
    #
    def ===(other)
      items_type = @items_type_fn.call
      case other
      in Array
        other.all? { |item| items_type === item }
      else
        false
      end
    end

    # @private
    #
    # @param value [Enumerable, Object]
    #
    # @return [Array<Object>]
    #
    def coerce(value)
      items_type = @items_type_fn.call
      case value
      in Enumerable unless value.is_a?(Hash)
        value.map { |item| Converter.coerce(items_type, item) }
      else
        value
      end
    end

    # @private
    #
    # @param value [Enumerable, Object]
    #
    # @return [Array<Object>]
    #
    def dump(value)
      items_type = @items_type_fn.call
      case value
      in Enumerable unless value.is_a?(Hash)
        value.map { |item| Converter.dump(items_type, item) }.to_a
      else
        value
      end
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def try_strict_coerce(value)
      case value
      in Array
        items_type = @items_type_fn.call
        great_success = true
        tally = 0

        mapped =
          value.map do |item|
            case Converter.try_strict_coerce(items_type, item)
            in [true, coerced, score]
              tally += score
              coerced
            in [false, true, score]
              great_success = false
              tally += score
              item
            in [false, false, _]
              great_success &&= item.nil?
              item
            end
          end

        if great_success
          [true, mapped, tally]
        else
          [false, true, tally]
        end
      else
        [false, false, 0]
      end
    end

    def initialize(type_info, spec = {})
      @items_type_fn = Unit::Converter.type_info(type_info || spec)
    end
  end

  # @private
  #
  # Hash of items of a given type.
  #
  class HashOf
    include Unit::Converter

    private_class_method :new

    # @private
    #
    def self.[](...) = new(...)

    # @param other [Object]
    #
    # @return [Boolean]
    #
    def ===(other)
      items_type = @items_type_fn.call
      case other
      in Hash
        other.to_enum.all? do |key, val|
          case [key, val]
          in [Symbol | String, ^items_type]
            true
          else
            false
          end
        end
      else
        false
      end
    end

    # @private
    #
    # @param value [Enumerable, Object]
    #
    # @return [Array<Object>]
    #
    def coerce(value)
      items_type = @items_type_fn.call
      case value
      in Hash
        value.to_h do |key, val|
          coerced = Unit::Converter.coerce(items_type, val)
          [key.is_a?(String) ? key.to_sym : key, coerced]
        end
      else
        value
      end
    end

    # @private
    #
    # @param value [Enumerable, Object]
    #
    # @return [Array<Object>]
    #
    def dump(value)
      items_type = @items_type_fn.call
      case value
      in Hash
        value.transform_values do |val|
          Unit::Converter.dump(items_type, val)
        end
      else
        value
      end
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def try_strict_coerce(value)
      case value
      in Hash
        items_type = @items_type_fn.call
        great_success = true
        tally = 0

        mapped =
          value.transform_values do |val|
            case Converter.try_strict_coerce(items_type, val)
            in [true, coerced, score]
              tally += score
              coerced
            in [false, true, score]
              great_success = false
              tally += score
              val
            in [false, false, _]
              great_success &&= val.nil?
              val
            end
          end

        if great_success
          [true, mapped, tally]
        else
          [false, true, tally]
        end
      else
        [false, false, 0]
      end
    end

    def initialize(type_info, spec = {})
      @items_type_fn = Unit::Converter.type_info(type_info || spec)
    end
  end

  # @private
  #
  class BaseModel
    include Unit::Converter

    # @private
    #
    # @param data [Unit::BaseModel, Hash{Symbol => Object}]
    #
    # @return [Hash{Symbol => Object}]
    #
    def self.coerce(value)
      case (coerced = Unit::Util.coerce_hash(value))
      in Hash
        new(coerced)
      else
        value
      end
    end

    # @private
    #
    # @param data [Unit::BaseModel, Hash{Symbol => Object}]
    #
    # @return [Hash{Symbol => Object}]
    #
    def self.dump(value)
      unless (coerced = Unit::Util.coerce_hash(value)).is_a?(Hash)
        return value
      end

      values = coerced.filter_map do |key, val|
        name = key.to_sym
        case (field = fields[name])
        in nil
          [name, val]
        else
          mode, type_fn, api_name = field.fetch_values(:mode, :type_fn, :key)
          case mode
          in :coerce
            next
          else
            target = type_fn.call
            [api_name, Converter.dump(target, val)]
          end
        end
      end.to_h

      defaults.each do |key, val|
        next if values.key?(key)

        values[key] = val
      end

      values
    end

    # @private
    #
    # @param value [Object]
    #
    # @return [Array(true, Object, nil), Array(false, bool, Integer)]
    #
    def self.try_strict_coerce(value)
      case value
      in Hash | Unit::BaseModel
        value = value.to_h
      else
        return [false, false, 0]
      end

      keys = value.keys.to_set
      great_success = true
      tally = 0
      acc = {}

      fields.each_value do |field|
        mode, required, type_fn, api_name = field.fetch_values(:mode, :required, :type_fn, :key)
        keys.delete(api_name)

        case [required && mode != :dump, value.key?(api_name)]
        in [_, true]
          target = type_fn.call
          item = value.fetch(api_name)
          case Converter.try_strict_coerce(target, item)
          in [true, coerced, score]
            tally += score
            acc[api_name] = coerced
          in [false, true, score]
            great_success = false
            tally += score
            acc[api_name] = item
          in [false, false, _]
            great_success &&= item.nil?
          end
        in [true, false]
          great_success = false
        in [false, false]
          nil
        end
      end

      keys.each do |key|
        acc[key] = value.fetch(key)
      end

      great_success ? [true, new(acc), tally] : [false, true, tally]
    end

    # @private
    #
    # Assumes superclass fields are totally defined before fields are accessed / defined on subclasses.
    #
    # @return [Hash{Symbol => Hash{Symbol => Object}}]
    #
    def self.fields
      @fields ||= (superclass == Unit::BaseModel ? {} : superclass.fields.dup)
    end

    # @private
    #
    # @return [Hash{Symbol => Proc}]
    #
    def self.defaults = (@defaults ||= {})

    # @private
    #
    # @param name_sym [Symbol]
    # @param required [Boolean]
    #
    # @return [void]
    #
    private_class_method def self.add_field(name_sym, required:, type_info:, spec:)
      type_fn, info =
        case type_info
        in Proc | Class | Unit::Converter
          [Unit::Converter.type_info({**spec, union: type_info}), spec]
        in Hash
          [Unit::Converter.type_info(type_info), type_info]
        end

      fallback = info[:const]
      defaults[name_sym] = fallback if required && !info[:nil?] && info.key?(:const)

      key = info.fetch(:api_name, name_sym)
      setter = "#{name_sym}="

      if fields.key?(name_sym)
        [name_sym, setter].each { |name| undef_method(name) }
      end

      fields[name_sym] = {mode: @mode, required: required, type_fn: type_fn, key: key}

      define_method(setter) do |val|
        @data[key] = val
      end

      define_method(name_sym) do
        field_type = type_fn.call
        value = @data.fetch(key) { self.class.defaults[key] }
        Converter.coerce(field_type, value)
      rescue StandardError
        name = self.class.name.split("::").last
        raise Unit::ConversionError.new(
          "Failed to parse #{name}.#{name_sym} as #{field_type.inspect}. " \
          "To get the unparsed API response, use #{name}[:#{key}]."
        )
      end
    end

    # @private
    #
    private_class_method def self.required(name_sym, type_info = nil, spec = {})
      add_field(name_sym, required: true, type_info: type_info, spec: spec)
    end

    # @private
    #
    private_class_method def self.optional(name_sym, type_info = nil, spec = {})
      add_field(name_sym, required: false, type_info: type_info, spec: spec)
    end

    # @private
    #
    # `request_only` attributes not excluded from `.#coerce` when receiving responses
    # even if well behaved servers should not send them
    #
    def self.request_only(&blk)
      @mode = :dump
      blk.call
    ensure
      @mode = nil
    end

    # @private
    #
    # `response_only` attributes are omitted from `.#dump` when making requests
    #
    def self.response_only(&blk)
      @mode = :coerce
      blk.call
    ensure
      @mode = nil
    end

    # Create a new instance of a model.
    # @param data [Hash{Symbol => Object}, Unit::BaseModel] Raw data to initialize the model with.
    #
    def initialize(data = {})
      case (coerced = Unit::Util.coerce_hash(data))
      in Hash
        @data = coerced.transform_keys(&:to_sym)
      else
        raise ArgumentError.new("Expected a #{Hash} or #{Unit::BaseModel}, got #{data.inspect}")
      end
    end

    # @param other [Object]
    #
    # @return [Boolean]
    #
    def ==(other)
      case other
      in Unit::BaseModel
        self.class.fields == other.class.fields && @data == other.to_h
      else
        false
      end
    end

    # Returns a Hash of the data underlying this object.
    # Keys are Symbols and values are the raw values from the response.
    # The return value indicates which values were ever set on the object -
    # i.e. there will be a key in this hash if they ever were, even if the
    # set value was nil.
    # This method is not recursive.
    # The returned value is shared by the object, so it should not be mutated.
    #
    # @return [Hash{Symbol => Object}] Data for this object.
    #
    def to_h = @data

    alias_method :to_hash, :to_h

    # Returns the raw value associated with the given key, if found. Otherwise, nil is returned.
    # It is valid to lookup keys that are not in the API spec, for example to access
    # undocumented features.
    # This method does not parse response data into higher-level types.
    # Lookup by anything other than a Symbol is an ArgumentError.
    #
    # @param key [Symbol] Key to look up by.
    #
    # @return [Object, nil] The raw value at the given key.
    #
    def [](key)
      unless key.instance_of?(Symbol)
        raise ArgumentError.new("Expected symbol key for lookup, got #{key.inspect}")
      end

      @data[key]
    end

    # @param keys [Array<Symbol>, nil]
    #
    # @return [Hash{Symbol => Object}]
    #
    def deconstruct_keys(keys)
      (keys || self.class.fields.keys).filter_map do |k|
        unless self.class.fields.key?(k)
          next
        end

        [k, method(k).call]
      end
      .to_h
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class.name}:0x#{object_id.to_s(16)} #{deconstruct_keys(nil).map do |k, v|
        "#{k}=#{v.inspect}"
      end.join(' ')}>"
    end

    # @return [String]
    #
    def to_s = @data.to_s
  end

  # rubocop:enable Style/CaseEquality
end
