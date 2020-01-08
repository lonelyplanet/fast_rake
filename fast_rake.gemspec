# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'fast_rake/version'

Gem::Specification.new do |s|
  s.name              = 'fast_rake'
  s.version           = FastRake::VERSION
  s.platform          = Gem::Platform::RUBY
  s.authors           = ['Jonathan Ricketson']
  s.email             = ['jonathan.ricketson@lonelyplanet.com.au']
  s.homepage          = 'https://github.com/jricketson/fast_rake'
  s.summary           = 'Makes developer pre-commit builds really fast. Runs a small number of setup tasks, followed by a bunch of expensive tasks in parallel. '
  s.description       = '
    Runs a small number of setup tasks, followed by a bunch of expensive tasks in parallel.
    This manages the number of running tasks and keeps the visible output to a small and useful amount.
    It was created to make developer pre-commit builds really fast, but still able to cover a lot of tests.
  '

  s.rubyforge_project = 'fast_rake'

  s.add_development_dependency 'gemma', '~> 3.0.0'
  s.add_development_dependency 'rubocop'

  s.files = Dir.glob('lib/**/*.rb')

  s.rdoc_options = [
    '--title',   "#{s.full_name} Documentation"
  ]
end
