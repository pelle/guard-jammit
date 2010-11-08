require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "guard-jammit"
    gem.summary = %Q{Guard plugin for running jammit}
    gem.description = %Q{This is a guard plugin to watch javascript and stylesheets to afterwards run jammit.}
    gem.email = "pelleb@gmail.com"
    gem.homepage = "http://github.com/pelle/guard-jammit"
    gem.authors = ["Pelle Braendgaard"]
    gem.add_dependency "guard"
    gem.add_dependency "jammit"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

task :default => :jeweler

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "guard-jammit #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
