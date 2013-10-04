# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parse_roman/version'

Gem::Specification.new do |spec|
  spec.name          = "parse_roman"
  spec.version       = ParseRoman::VERSION
  spec.authors       = ["Oleg Potapov"]
  spec.email         = ["oleg0potapov@gmail.com"]
  spec.description   = "gem description"
  spec.summary       = "gem summary"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
