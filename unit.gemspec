# frozen_string_literal: true

require_relative "lib/unit/version"

Gem::Specification.new do |s|
  s.name = "unit"
  s.version = Unit::VERSION
  s.summary = "Ruby library to access the Unit API"
  s.authors = ["Unit"]
  s.email = "dev-feedback@hao-test.com"
  s.files = Dir["lib/**/*.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/unit/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/hao-4-ruby"
  s.metadata["rubygems_mfa_required"] = "true"
end
