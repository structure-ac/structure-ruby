# login
Available in: `user`

Login user

## Example Usage
```ruby
require_relative structure


s = structure::Structure.new

   
req = operations.Operations::LoginApplicationJSON(
  request=Operations::LoginApplicationJSON(
    email="Kristian_Haley69@gmail.com",
    password="provident",
  ),
)
    
res = s.user::login(req)

if ! res.body.nil?
    # handle response

```