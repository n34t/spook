# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spook/version'

Gem::Specification.new do |spec|
  spec.name          = "spook"
  spec.version       = Spook::VERSION
  spec.authors       = ["Evan Marsland"]
  spec.email         = ["ERmarsland@gmail.com"]

  spec.summary       = %q{command line interface to spook.in}
  spec.description   = %q{command line interface to spook.in}
  spec.homepage      = "https://github.com/n34t/spook"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
