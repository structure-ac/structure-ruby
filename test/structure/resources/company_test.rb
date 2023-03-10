# frozen_string_literal: true

require "test_helper"

class CompanyResourceTest < Minitest::Test
  def test_find
    stub = stub_request("companies/microsoft", response: stub_response(fixture: "companies/show"))
    client = Structure::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    company = client.company.find("microsoft")

    assert_equal Structure::Company, company.class
    assert_equal "Test", company.data.name
  end
end
