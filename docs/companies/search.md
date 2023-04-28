# search
Available in: `companies`

Search Companies

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::SearchCompaniesApplicationJSON(
  request=Operations::SearchCompaniesApplicationJSON(
    filter="perferendis",
    limit="magni",
    page="assumenda",
    query="ipsam",
  ),
)
    
res = s.companies::search(req)

if ! res.body.nil?
    # handle response

```