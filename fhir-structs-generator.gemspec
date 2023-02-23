# frozen_string_literal: true

require_relative "lib/fhir/structs/generator/version"

Gem::Specification.new do |spec|
  spec.name = "fhir-structs-generator"
  spec.version = FHIR::Structs::Generator::VERSION
  spec.authors = ["Alberto Colón Viera"]
  spec.email = ["aacv@albertico.dev"]

  spec.summary = "FHIR::Structs Generator"
  spec.description = "Generates FHIR::Structs for a given FHIR core release"
  spec.homepage = "https://github.com/albertico/fhir-structs-generator"
  spec.required_ruby_version = ">= 3.0.5"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/albertico/fhir-structs-generator"
  spec.metadata["changelog_uri"] = "https://github.com/albertico/fhir-structs-generator/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "dry-cli", "~> 1.0"
  spec.add_dependency "dry-struct", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
