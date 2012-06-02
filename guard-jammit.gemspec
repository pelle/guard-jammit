# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/jammit/version'

Gem::Specification.new do |s|
  s.name        = 'guard-jammit'
  s.version     = Guard::JammitVersion::VERSION
  s.authors     = ['Pelle Braendgaard', 'Michael Kessler']
  s.email       = ['pelle@stakeventures.com', 'michi@netzpiraten.ch']
  s.homepage    = %q{http://github.com/guard/guard-jammit}
  s.summary     = %q{Guard plugin for Jammit}
  s.description = %q{Watches your assets to automatically package them using Jammit.}

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'guard-jammit'

  s.add_dependency 'guard',      '>= 1.1.0'
  s.add_dependency 'jammit'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'redcarpet'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rake'

  s.files        = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  s.require_path = 'lib'
end
