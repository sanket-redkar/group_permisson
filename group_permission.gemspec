# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'group_permission/version'

Gem::Specification.new do |spec|
  spec.name          = "group_permission"
  spec.version       = GroupPermission::VERSION
  spec.authors       = ["sanket_redkar"]
  spec.email         = ["sanket.redkar20@gmail.com"]
  spec.description   = %q{Manage the groups permission}
  spec.summary       = %q{This gem set the group permission without database.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
