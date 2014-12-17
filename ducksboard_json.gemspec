# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ducksboard_json/version'


Gem::Specification.new do |spec|
  spec.name          = 'ducksboard_json'
  spec.version       = DucksboardJson::VERSION
  spec.authors       = ['Dean Morin']
  spec.email         = ['morin.dean@gmail.com']
  spec.summary       = 'Write JSON that will be used by Ducksboard.'
  spec.description = <<-EOS
    This gem produces a very specific format so it may not be useful for many cases.
  EOS
  spec.homepage      = 'http://github.com/deanmorin/ducksboard_json'
  spec.license       = 'The Unlicense'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'trollop', '~> 2'
end
