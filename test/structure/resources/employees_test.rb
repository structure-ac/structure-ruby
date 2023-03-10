# frozen_string_literal: true

require "test_helper"

class EmployeesResourceTest < Minitest::Test
  def test_find
    stub = stub_request("companies/microsoft/employees", response: stub_response(fixture: "companies/employees"))
    client = Structure::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    company = client.employees.find("microsoft")

    assert_equal Structure::Collection, company.class
  end
end
