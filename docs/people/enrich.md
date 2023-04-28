# enrich
Available in: `people`

Enrich a person profile

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::EnrichPersonRequest(
  path_params=Operations::EnrichPersonRequest(
    id="02a94bb4-f63c-4969-a9a3-efa77dfb14cd",
  ),
)
    
res = s.people::enrich(req)

if ! res.body.nil?
    # handle response

```