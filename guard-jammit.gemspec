# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/jammit/version"

Gem::Specification.new do |s|
  s.name        = "guard-jammit"
  s.version     = Guard::Jammit::VERSION
  s.authors     = ["Pelle Braendgaard"]
  s.email       = ["pelle@stakeventures.com"]
  s.homepage    = %q{http://github.com/guard/guard-jammit}
  s.summary     = %q{Guard plugin for Jammit}
  s.description = %q{This is a guard plugin to watch javascript and stylesheets to afterwards run jammit.}

  s.rubyforge_project = "guard-jammit"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 0"])
      s.add_runtime_dependency(%q<jammit>, [">= 0"])
    else
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<jammit>, [">= 0"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<jammit>, [">= 0"])
  end

end
