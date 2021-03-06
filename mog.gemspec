# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mog/version"

Gem::Specification.new do |s|
  s.name        = "mog"
  s.version     = Mog::VERSION
  s.authors     = ["Steve Agalloco"]
  s.email       = ["steve.agalloco@gmail.com"]
  s.homepage    = "https://github.com/spagalloco/mog"
  s.summary     = %q{A Ruby wrapper around the Unofficial Mog API.}
  s.description = s.summary

  s.add_development_dependency('rake', '~> 0.9')
  s.add_development_dependency('rspec', '~> 2.7')
  s.add_development_dependency('yard', '~> 0.7')
  s.add_development_dependency('rdiscount', '~> 1.6')
  s.add_development_dependency('simplecov', '~> 0.5')
  s.add_development_dependency('webmock', "~> 1.7")
  s.add_development_dependency('vcr', '~> 1.11')

  s.add_runtime_dependency('rash', '~> 0.3')
  s.add_runtime_dependency('faraday_middleware', '~> 0.7')
  s.add_runtime_dependency('multi_json', '~> 1.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
