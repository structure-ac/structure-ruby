module Structure
  class PersonResource < Resource
    def find(id)
      Person.new get_request("people", params: {id: id}).body
    end
  end
end
