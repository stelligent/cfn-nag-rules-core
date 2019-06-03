# frozen_string_literal: true

puts Dir.glob('lib/**/*.rb')
Gem::Specification.new do |s|
  s.name          = 'cfn-nag-rules-core'
  s.license       = 'MIT'
  s.version       = '0.0.1'
  s.bindir        = 'bin'
  s.authors       = ['Eric Kascic']
  s.summary       = 'Core Rules for cfn_nag'
  s.description   = 'The core rules for cfn_nag'
  s.homepage      = 'https://github.com/stelligent/cfn_nag'
  s.files         = Dir.glob('lib/**/*.rb')

  s.require_paths << 'lib'

  s.required_ruby_version = '>= 2.2'

  s.add_development_dependency('cfn-nag', '>= 0.4.0')
  s.add_development_dependency('rspec', '~> 3.4')
  s.add_development_dependency('rubocop')

  s.add_runtime_dependency('cfn-model')
end
