# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secretSanta/version'

Gem::Specification.new do |spec|
  spec.name          = "secretSanta"
  spec.version       = SecretSanta::VERSION
  spec.authors       = ["pacoseventeen"]
  spec.email         = ["pacoseventeen@gmail.com"]

  spec.summary       = "Set up a secret santa so secret, not even you will know who got who"
  spec.homepage      = "https://github.com/pacoseventeen/secretSanta"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org.
  spec.metadata['allowed_push_host'] = "http://pacoseventeen.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.3'

  spec.add_runtime_dependency "slack",  "~> 1.2.3"
  spec.add_runtime_dependency "json",   "~> 1.8.3"
  spec.add_runtime_dependency "dotenv", "~> 2.1.1"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
