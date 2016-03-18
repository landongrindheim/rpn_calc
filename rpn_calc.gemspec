# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rpn_calc/version"

Gem::Specification.new do |spec|
  spec.name          = "rpn_calc"
  spec.version       = RpnCalc::VERSION
  spec.authors       = ["Landon Grindheim"]
  spec.email         = ["landon.grindheim@gmail.com"]

  spec.summary       = "Reverse Polish Notation calculator"
  spec.description   = "Calculator in which operators follow operands."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "rpn_calc"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
