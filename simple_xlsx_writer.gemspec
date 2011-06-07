# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_xlsx/version"

Gem::Specification.new do |s|
  s.name        = "broadcamp56-simple_xlsx_writer"
  s.version     = SimpleXlsx::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dee Zsombor", "Justin Beck"]
  s.email       = ["zsombor@primalgrasp.com"]
  s.homepage    = "http://github.com/Broadcamp56/simple_xlsx_writer"
  s.summary     = "Just as the name says, simple writer for Office 2007+ Excel files"
  s.description = "Writes XLSX files"

  s.rubyforge_project = "broadcamp56-simple_xlsx_writer"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rubyzip", ">= 0.9.4")
  s.add_dependency("fast_xs", ">= 0.7.3")
end
