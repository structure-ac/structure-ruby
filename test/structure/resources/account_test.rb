require "test_helper"

class AccountResourceTest < Minitest::Test
  def test_info
    stub = stub_request("me", response: stub_response(fixture: "account/info"))
    client = Structure::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    account = client.account.info
    assert_equal Structure::Account, account.class
    assert_equal "test", account.name
  end
end
