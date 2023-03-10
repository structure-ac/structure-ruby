# Structure API Rubygem

[![Build Status](https://github.com/structure-ac/structure-ruby/workflows/Tests/badge.svg)](https://github.com/structure-ac/structure-ruby/actions)

The easiest and most complete sdk for [Structure](https://www.structure.ac). Currently supports [API v1](https://www.structure.ac/docs).

## Installation

Add this line to your application's Gemfile:

    gem 'structure_ac'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install structure_ac

## Usage

To access the API, you'll need to create a `Structure::Client` and pass in your API key. You can find your API key at [https://www.structure.ac/api_tokens](https://www.structure.ac/api_tokens)

```ruby
client = Structure::Client.new(api_key: ENV["STRUCTURE_API_KEY"])
```

The client then gives you access to each of the resources.

## Resources

The gem maps as closely as we can to the Structure API so you can easily convert API examples to gem code.

Responses are created as objects like `Structure::Company`. Having types like `Structure::User` is handy for understanding what type of object you're working with. They're built using OpenStruct so you can easily access data in a Ruby-ish way.

##### Pagination

 `list` endpoints return pages of results. The result object will have a `data` key to access the results, as well as metadata like `next_cursor` and `prev_cursor` for retrieving the next and previous pages. You may also specify the

```ruby
results = client.jobs.list(per_page: 5)
#=> Structure::Collection

results.total
#=> 48

results.data
#=> [#<Structure::Job>, #<Structure::Job>]

# Retrieve the next page
client.jobs.list(company_id: 1, per_page: 5, offset: 1)
#=> Structure::Collection
```

### Account

```ruby
client.account.info
```

### Company

```ruby
client.company.find('microsoft')
```

### Person

```ruby
client.person.find('johndoe')
```

### Jobs

```ruby
client.jobs.find('1234')
```

### Employees

```ruby
client.employees.find('microsoft')
```

## Contributing

1. Fork it ( https://github.com/structure-ac/structure-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

When adding methods, add to the list of DEFINITIONS in lib/structure.rb. Additionally, write a spec and add it to the list in the README.
