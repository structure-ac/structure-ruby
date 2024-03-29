# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Structure
  module Operations
    class SearchCompaniesApplicationJSON < Structure::Utils::FieldAugmented
      extend T::Sig

            # Filter for searching
      field :filter, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('filter') } }      # Number of results per page (0-100) default 10
      field :limit, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('limit') } }      # The offset number to start at
      field :page, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('page') } }      # Query for searching
      field :query, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('query') } }

      sig { params(filter: T.nilable(String), limit: T.nilable(String), page: T.nilable(String), query: T.nilable(String)).void }
      def initialize(filter: nil, limit: nil, page: nil, query: nil)
        @filter = filter
        @limit = limit
        @page = page
        @query = query
      end
    end

    class SearchCompaniesResponse < Structure::Utils::FieldAugmented
      extend T::Sig

      
      field :content_type, String
      field :status_code, Integer
      field :body, T.nilable(String)
      field :raw_response, T.nilable(Faraday::Response)

      sig { params(content_type: String, status_code: Integer, body: T.nilable(String), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, body: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @body = body
        @raw_response = raw_response
      end
    end
  end
end
