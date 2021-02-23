# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-thumbor/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-thumbor"
  spec.version       = Jekyll::Thumbor::VERSION
  spec.summary       = %q{A Jekyll template tag for Thumbor imaging service.}
  spec.description   = %q{A Jekyll template tag for Thumbor imaging service.}
  spec.license       = "Apache 2.0"

  spec.authors       = ["GBIF Secretariat"]
  spec.email         = ["informatics@gbif.org"]

  spec.homepage      = "https://github.com/gbif/jekyll-thumbor"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jekyll'
  
  spec.add_runtime_dependency "ruby-thumbor"
  spec.add_runtime_dependency "yaml"

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "ffi", "~> 1.13.1"
  
end
