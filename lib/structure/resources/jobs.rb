module Structure
  class JobsResource < Resource
    def find(id)
      response = get_request("companies/#{id}/jobs")
      Collection.from_response(response, key: "results", type: Job)
    end
  end
end
