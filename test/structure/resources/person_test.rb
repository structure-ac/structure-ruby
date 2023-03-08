# frozen_string_literal: true

require "test_helper"

class PersonResourceTest < Minitest::Test
  def test_find
    stub = stub_request("people", response: stub_response(fixture: "people/show"))
    client = Structure::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    person = client.person.find("microsoft")

    assert_equal Structure::Person, person.class
    assert_equal "admin@example.com", person.email
  end
end
