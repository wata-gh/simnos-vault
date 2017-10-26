# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simnos/vault/version'

Gem::Specification.new do |spec|
  spec.name          = "simnos-vault"
  spec.version       = Simnos::Vault::VERSION
  spec.authors       = ['wata']
  spec.email         = ['wata.gm@gmail.com']

  spec.summary       = %q{Secret provider for Simnos}
  spec.description   = %q{Secret provider to expand secret variable of Simnos.}
  spec.homepage      = 'https://github.com/wata-gh/simnos-vault'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "simnos"
  spec.add_dependency "vault", "~> 0.10.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
