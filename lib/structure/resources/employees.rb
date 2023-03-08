module Structure
  class EmployeesResource < Resource
    def find(id)
      response = get_request("companies/#{id}/employees")
      Collection.from_response(response, key: "employees", type: Employee)
    end
  end
end
