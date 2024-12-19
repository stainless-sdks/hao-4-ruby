# frozen_string_literal: true

require_relative "../test_helper"

class Unit::Test::Resources::AccountsTest < Minitest::Test
  def setup
    @hao_4 = Unit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @hao_4.accounts.create(data: {})

    assert_pattern do
      response => Unit::Models::AccountCreateResponse
    end
  end

  def test_retrieve
    response = @hao_4.accounts.retrieve("accountId")

    assert_pattern do
      response => Unit::Models::AccountRetrieveResponse
    end
  end

  def test_update_required_params
    response = @hao_4.accounts.update("accountId", data: {"attributes" => {}, "type" => "depositAccount"})

    assert_pattern do
      response => Unit::Models::AccountUpdateResponse
    end
  end

  def test_list
    response = @hao_4.accounts.list

    assert_pattern do
      response => Unit::Models::AccountListResponse
    end
  end

  def test_activate_daca
    response = @hao_4.accounts.activate_daca("accountId")

    assert_pattern do
      response => Unit::Models::AccountActivateDacaResponse
    end
  end

  def test_close
    response = @hao_4.accounts.close("accountId")

    assert_pattern do
      response => Unit::Models::AccountCloseResponse
    end
  end

  def test_deactivate_daca
    response = @hao_4.accounts.deactivate_daca("accountId")

    assert_pattern do
      response => Unit::Models::AccountDeactivateDacaResponse
    end
  end

  def test_enter_daca
    response = @hao_4.accounts.enter_daca("accountId")

    assert_pattern do
      response => Unit::Models::AccountEnterDacaResponse
    end
  end

  def test_freeze_
    response = @hao_4.accounts.freeze_("accountId")

    assert_pattern do
      response => Unit::Models::AccountFreezeResponse
    end
  end

  def test_reopen
    response = @hao_4.accounts.reopen("accountId")

    assert_pattern do
      response => Unit::Models::AccountReopenResponse
    end
  end

  def test_unfreeze
    response = @hao_4.accounts.unfreeze("accountId")

    assert_pattern do
      response => Unit::Models::AccountUnfreezeResponse
    end
  end
end
