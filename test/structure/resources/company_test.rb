# frozen_string_literal: true

require "test_helper"

class CompanyResourceTest < Minitest::Test
  def test_find
    stub = stub_request("companies", response: stub_response(fixture: "companies/show"))
    client = Structure::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    company = client.company.find("microsoft")

    assert_equal Structure::Company, company.class
    assert_equal "admin@example.com", company.email
  end
end
