# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bay_photo/version"

Gem::Specification.new do |spec|
  spec.name          = "bay_photo"
  spec.version       = BayPhoto::VERSION
  spec.authors       = ["Josh Lindsey"]
  spec.email         = ["josh@snapshots.com"]

  spec.summary       = "Integration with BayPhoto's new API"
  spec.homepage      = "https://github.com/SnapShotsApp/bay_photo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json", ">= 1"
end

