# frozen_string_literal: true

require_relative "lib/GreekToolkit/version"

Gem::Specification.new do |spec|
  spec.name          = "GreekToolkit"
  spec.version       = GreekToolkit::VERSION
  spec.authors       = ["Bernardo C.D.A. Vasconcelos"]
  spec.email         = ["bernardovasconcelos@gmail.com"]

  spec.summary       = "String class methods for Ancient Greek."
  spec.description   = "This gem extends the String class to include useful methods for working with Ancient Greek."
  spec.homepage      = "https://github.com/bcdavasconcelos/GreekToolkit"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bcdavasconcelos/GreekToolkit"
  spec.metadata["changelog_uri"] = "https://github.com/bcdavasconcelos/GreekToolkit/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
