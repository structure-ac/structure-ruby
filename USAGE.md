<!-- Start SDK Example Usage -->
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::EnrichCompanyRequest(
  path_params=Operations::EnrichCompanyRequest(
    id="89bd9d8d-69a6-474e-8f46-7cc8796ed151",
  ),
)
    
res = s.companies::enrich(req)

if ! res.body.nil?
    # handle response

```

<!-- End SDK Example Usage -->