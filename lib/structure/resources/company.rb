module Structure
  class CompanyResource < Resource
    def find(id)
      Company.new get_request("companies/#{id}").body
    end
  end
end
