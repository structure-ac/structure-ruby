module Structure
  class Client
    BASE_URL = "https://www.structure.ac/api/v1"

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter, stubs: nil)
      @api_key = api_key
      @adapter = adapter

      # Test stubs for requests
      @stubs = stubs
    end

    def account
      AccountResource.new(self)
    end

    def company
      CompanyResource.new(self)
    end

    def person
      PersonResource.new(self)
    end

    def jobs
      JobsResource.new(self)
    end

    def employees
      EmployeesResource.new(self)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        conn.request :authorization, :Bearer, api_key
        conn.request :json

        conn.response :json, content_type: "application/json"

        conn.adapter adapter, @stubs
      end
    end
  end
end
