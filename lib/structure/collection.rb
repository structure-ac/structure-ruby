module Structure
  class Collection
    attr_reader :data, :total, :per_page, :start_at

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        total: body.dig("pagination", "total"),
        per_page: body.dig("pagination", "per_page"),
        start_at: body.dig("pagination", "start_at")
      )
    end

    def initialize(data:, total:, per_page:, start_at:)
      @data = data
      @total = total
      @per_page = per_page
      @start_at = start_at
    end
  end
end
