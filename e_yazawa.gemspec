# frozen_string_literal: true

require_relative "lib/e_yazawa/version"

Gem::Specification.new do |spec|
  spec.name = "e_yazawa"
  spec.version = EYazawa::VERSION
  spec.authors = ["shirotamaki"]
  spec.email = ["shiro.tamaki63@gmail.com"]

  spec.summary = "Yazawa will give you some advice."
  spec.description = "Yazawa will give you some advice. Choose your worry. Your worries will disappear."
  spec.homepage = "https://rubygems.org/gems/e_yazawa"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shirotamaki/e_yazawa"
  spec.metadata["changelog_uri"] = "https://github.com/shirotamaki/e_yazawa"

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
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
