# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dat_gretel/version'

Gem::Specification.new do |gem|
  gem.name          = "dat_gretel"
  gem.version       = DatGretel::VERSION
  gem.authors       = ["Lasse Bunk, Marcio Silva"]
  gem.email         = ["marcio.dat@gmail.com"]
  gem.description   = %q{Gretel is a Ruby on Rails plugin that makes it easy yet flexible to create breadcrumbs.}
  gem.summary       = %q{Flexible Ruby on Rails breadcrumbs plugin. This is a fork from the original version gretel including updates and new functionalities}
  gem.homepage      = "http://github.com/marciodat/dat_gretel"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", ">= 4.1.0"
  gem.add_development_dependency "sqlite3"
end
