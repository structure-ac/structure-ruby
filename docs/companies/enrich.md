# enrich
Available in: `companies`

Enrich a company profile

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::EnrichCompanyRequest(
  path_params=Operations::EnrichCompanyRequest(
    id="a05dfc2d-df7c-4c78-8a1b-a928fc816742",
  ),
)
    
res = s.companies::enrich(req)

if ! res.body.nil?
    # handle response

```