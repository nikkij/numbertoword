# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'numbertoword/version'

Gem::Specification.new do |spec|
  spec.name          = "numbertoword"
  spec.version       = Numbertoword::VERSION
  spec.authors       = ["Nicole Jacobson"]
  spec.email         = ["nbjacobson@gmail.com"]
  spec.summary       = %q{Change numbers to words.}
  spec.description   = %q{Words are better than numbers. Change them all.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
