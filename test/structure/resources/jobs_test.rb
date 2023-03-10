# frozen_string_literal: true

require "test_helper"

class JobsResourceTest < Minitest::Test
  def test_find
    stub = stub_request("companies/microsoft/jobs", response: stub_response(fixture: "companies/jobs"))
    client = Structure::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    company = client.jobs.find("microsoft")

    assert_equal Structure::Collection, company.class
  end
end
