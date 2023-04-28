# list_jobs
Available in: `companies`

List company jobs

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::ListJobsRequest(
  path_params=Operations::ListJobsRequest(
    id="3f5ad019-da1f-4fe7-8f09-7b0074f15471",
    offset="harum",
    per_page="enim",
  ),
  query_params=Operations::ListJobsRequest(
    id="e6e13b99-d488-4e1e-91e4-50ad2abd4426",
    offset="cupiditate",
    per_page="quos",
  ),
)
    
res = s.companies::list_jobs(req)

if ! res.body.nil?
    # handle response

```