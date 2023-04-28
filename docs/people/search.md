# search
Available in: `people`

Search People

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::SearchPeopleApplicationJSON(
  request=Operations::SearchPeopleApplicationJSON(
    filter="ea",
    limit="aliquid",
    page="laborum",
    query="accusamus",
  ),
)
    
res = s.people::search(req)

if ! res.body.nil?
    # handle response

```