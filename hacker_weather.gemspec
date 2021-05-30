# frozen_string_literal: true

require_relative "lib/hacker_weather/version"

Gem::Specification.new do |spec|
  spec.name          = "hacker_weather"
  spec.version       = HackerWeather::VERSION
  spec.authors       = ["Gulchaman Mammadova"]
  spec.email         = ["gulchaman.mammadova@gmail.com"]

  spec.summary       = "Get weather temperature for your city in the terminal."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/gmammadova/hacker_weather"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "nokogiri", "~> 1.8.5"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
