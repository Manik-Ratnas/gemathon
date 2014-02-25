# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemathon/version'

Gem::Specification.new do |spec|
  spec.name          = "gemathon"
  spec.version       = Gemathon::VERSION
  spec.authors       = ["Ramtin Vaziri", "Manish puri", "Hemali Jain","Amruta Das","Arpit Kulshrestha"]
  spec.description   = %q{Find repositories belonging to organisation.}
  spec.summary       = %q{gemathon is a Ruby gem that facilittes easy fetching of repositories belonging to an organisation}
  spec.homepage      = "https://github.com/Manik-Ratna/gemathon"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'github_api'
  spec.add_development_dependency 'rake', '~>10.1.1'
  spec.add_development_dependency 'rspec'
end
