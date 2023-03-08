# frozen_string_literal: true

require_relative "lib/structure_ac/version"

Gem::Specification.new do |spec|
  spec.name = "structure_ac"
  spec.version = Structure::VERSION
  spec.authors = ["Tyler Horan"]
  spec.email = ["thoran@structure.ac"]

  spec.summary = "API Wrapper for structure.ac"
  spec.description = "API access to structure.ac"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/structure-ac/structure-ruby.git"
  spec.metadata["changelog_uri"] = "https://github.com/structure-ac/structure-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "faraday", "~> 1.7"
  spec.add_dependency "faraday-middleware", "~> 1.1"
end
