# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devel/version'

Gem::Specification.new do |spec|
  spec.name          = "devel"
  spec.version       = Devel::VERSION
  spec.authors       = ["Omar Abdel-Wahab"]
  spec.email         = ["owahab@gmail.com"]
  spec.description   = %q{Rails Developer Essential Gem}
  spec.summary       = %q{Rails Developer Essential Gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.post_install_message = File.read("INSTALL.txt")

  spec.required_ruby_version = '>= 1.9.2'
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "rails", ">= 3.2"
  spec.add_dependency "letter_opener"
  spec.add_dependency "better_errors"
  spec.add_dependency "binding_of_caller"
end
