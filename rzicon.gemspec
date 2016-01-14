require File.expand_path('../lib/nizicon/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'rzicon'
  spec.version       = Nizicon::VERSION
  spec.authors       = ['bash0C7', 'alpaca-tc']
  spec.email         = ['ksb.4038.nullpointer+bash0C7@gmail.com', 'alpaca-tc@alpaca.tc']
  spec.description   = %q{All about Worldwide idol "2zicon".}
  spec.summary       = %q{All about Worldwide idol "2zicon".}
  spec.homepage      = 'https://github.com/bash0C7/rzicon'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(/^spec/)
  spec.require_paths = ['lib']

  spec.add_dependency 'masterman', '~> 0.0.6'
  spec.add_development_dependency 'bundler', '>= 1.3.5'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
end
