# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nizicon/version'

Gem::Specification.new do |spec|
  spec.name          = "rzicon"
  spec.version       = Nizicon::VERSION
  spec.authors       = ["bash0C7"]
  spec.email         = ["ksb.4038.nullpointer+bash0C7@gmail.com"]
  spec.description   = %q{All about Worldwide idol "2zicon".}
  spec.summary       = %q{All about Worldwide idol "2zicon".}
  spec.homepage      = "https://github.com/bash0C7/rzicon"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency "hashie", ">= 2.0.5"

  spec.add_development_dependency "bundler", ">= 1.3.5"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0.0"
  #spec.add_development_dependency "rspec-collection_matchers", "~> 1.0.0"
  #spec.add_development_dependency "rspec-its", "~> 1.0.1"
end
