# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rjb-loader/version"

Gem::Specification.new do |s|
  s.name        = "rjb-loader"
  s.version     = RjbLoader::VERSION
  s.authors     = ["Marlus Saraiva","Nils Woetzel"]
  s.summary     = %q{Rjb loader with before_load and after_load hooks}
  s.description = %q{When working with multiple gems or several rails initializer files that use Rjb, 
                     you need to make sure that all java dependencies of each implementation 
                     gets set up before running Rjb::load. This is necessary because Rjb can be loaded only once.
                     You can use rjb-loader to change classpath and java options, by adding 'before_load' to your gem or rails initializer.
                     The 'after_load' hook can be used when your code needs an already loaded Rjb. 
                     For instance, when you need to import and use java classes.}
  s.email       = "nils.woetzel@h-its.org"
  s.homepage    = "https://github.com/HITS-SDBV/rjb-loader"
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency("rake", "~> 10.0")
  s.add_development_dependency("minitest", "~> 5.0")

  s.add_dependency('rjb', '~> 1.5')
  s.add_dependency('railties')
end
