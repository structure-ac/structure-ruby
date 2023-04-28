# list_employees
Available in: `companies`

List company employees

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::ListEmployeesRequest(
  path_params=Operations::ListEmployeesRequest(
    id="cb739205-9293-496f-aa75-96eb10faaa23",
    offset="corporis",
    per_page="explicabo",
  ),
  query_params=Operations::ListEmployeesRequest(
    id="c5955907-aff1-4a3a-afa9-467739251aa5",
    offset="odit",
    per_page="quo",
  ),
)
    
res = s.companies::list_employees(req)

if ! res.body.nil?
    # handle response

```