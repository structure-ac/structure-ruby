module Structure
  class PersonResource < Resource
    def find(id)
      Person.new get_request("people/#{id}").body
    end
  end
end
