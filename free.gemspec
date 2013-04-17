# -*- encoding: utf-8 -*-
require File.expand_path('../lib/free/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew"]
  gem.email         = ["andrew@sodaridgelabs.com"]
  gem.description   = %q{Lets you create models that are free (available) during certain timeslots. Supplies you with utility methods for finding models that have overlapping availability.}
  gem.summary       = %q{A Timeslot Gem for Rails}
  gem.homepage      = "https://github.com/sodaridgelabs/free"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "free"
  gem.require_paths = ["lib"]
  gem.version       = Free::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "with_model"
end
