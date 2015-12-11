# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-visible-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-visible-rails"
  spec.version       = JqueryVisible::Rails::VERSION
  spec.authors       = ["Leszek Kmieć"]
  spec.email         = ["lk@airhelp.eu"]
  spec.summary       = "This gem just adds jquery-visible to your assets"
  spec.homepage      = "https://github.com/AirHelp/jquery-visible-rails"

  spec.rubyforge_project = "jquery-visible-rails"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             "rails", ">= 3.1.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
