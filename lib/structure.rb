require "faraday"
require "structure/version"

module Structure
  autoload :Client, "structure/client"
  autoload :Collection, "structure/collection"
  autoload :Error, "structure/error"
  autoload :Resource, "structure/resource"
  autoload :Object, "structure/object"

  # High-level categories of Vultr API calls
  autoload :AccountResource, "structure/resources/account"
  autoload :CompanyResource, "structure/resources/company"
  autoload :PersonResource, "structure/resources/person"
  autoload :JobsResource, "structure/resources/jobs"
  autoload :EmployeesResource, "structure/resources/employees"

  # Classes used to return a nicer object wrapping the response data
  autoload :Account, "structure/objects/account"
  autoload :Company, "structure/objects/company"
  autoload :Person, "structure/objects/person"
  autoload :Job, "structure/objects/job"
  autoload :Employee, "structure/objects/employee"
end
