# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wallabee/version'

Gem::Specification.new do |gem|
  gem.name          = "wallabee"
  gem.version       = Wallabee::VERSION
  gem.authors       = ["Mike Ballou"]
  gem.email         = ["mikeballou@gmail.com"]
  gem.description   = %q{Wallab.ee Api Wrapper}
  gem.summary       = %q{A simple ruby api wrapper for the wallab.ee api}
  gem.homepage      = "https://github.com/ballou88/wallabee"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'faraday', '~> 0.8.4'
  gem.add_dependency 'faraday_middleware'
  gem.add_dependency 'json'
  gem.add_dependency 'rash'

  gem.add_development_dependency 'rspec', '~> 2.0'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'rb-fsevent'
  gem.add_development_dependency 'dotenv'

  gem.add_development_dependency 'vcr',     '~> 2.4'
  gem.add_development_dependency 'fakeweb', '~> 1.3.0'
  gem.add_development_dependency 'yard'
end
