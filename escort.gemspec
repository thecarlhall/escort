# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'escort/version'

Gem::Specification.new do |gem|
  gem.name          = "escort"
  gem.version       = Escort::VERSION
  gem.authors       = ["Carl Hall"]
  gem.email         = ["carl.hall@gmail.com"]
  gem.description   = %q{Escort handles the conversation between the user and the appropriate Identity Provider (IdP). This gives the application developer just one interface to trust and let the upstream Service Provider (Escort) deal with the actual IdP. Yes, it's a layer on a layer on a layer, but it's an interesting problem to tinker with.}
  gem.summary       = %q{Common interface to trust for authentication that can talk with a number of identify providers.}
  gem.homepage      = "http://github.com/thecarlhall/escort"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'

  gem.add_runtime_dependency 'ruby-saml-idp'
  gem.add_runtime_dependency 'ruby-saml'
end
