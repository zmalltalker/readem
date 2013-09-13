# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'readem/version'

Gem::Specification.new do |spec|
  spec.name          = "readem"
  spec.version       = Readem::VERSION
  spec.authors       = ["Marius Mathiesen"]
  spec.email         = ["marius.mathiesen@gmail.com"]
  spec.description   = %q{Serve the READMEs in your ~/Projects in a web browser}
  spec.summary       = %q{Run it, and see all your READMEs.}
  spec.homepage      = "https://github.com/zmalltalker/readem"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "redcarpet", "~> 2.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
