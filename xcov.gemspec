# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "xcov/version"

Gem::Specification.new do |spec|
  spec.name          = "xcov"
  spec.version       = Xcov::VERSION
  spec.authors       = ["Carlos Vidal"]
  spec.email         = ["nakioparkour@gmail.com"]
  spec.summary       = Xcov::DESCRIPTION
  spec.description   = Xcov::DESCRIPTION
  spec.homepage      = "https://github.com/nakiostudio/xcov"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.0.0"

  spec.files = Dir["lib/**/*"] + Dir["views/*"] + Dir["assets/**/*"] + %w(bin/xcov README.md LICENSE)

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'fastlane_core', '>= 0.44.0'
  spec.add_dependency 'slack-notifier', '~> 1.3'
  spec.add_dependency 'xcodeproj', '~> 1.4'
  spec.add_dependency 'terminal-table' # print out build information

  # Development only
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "fastlane", ">= 1.90.0" # yes, we use fastlane for testing
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop", "~> 0.35.1"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "yard", "~> 0.8.7.4"
  spec.add_development_dependency "webmock", "~> 1.19.0"
  spec.add_development_dependency "coveralls"
end
