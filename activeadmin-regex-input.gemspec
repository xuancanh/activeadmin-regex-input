lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin/regex-input/version'

Gem::Specification.new do |s|
  s.name        = 'activeadmin-regex-input'
  s.version     = '0.0.0'
  s.date        = '2018-03-12'
  s.summary     = "Formtastic Regex Input"
  s.description = "A simple input for activeadmin with client check if input matches predefined regex."
  s.authors     = ["Canh Nguyen"]
  s.email       = 'xuancanh.1994@gmail.com'
  s.files       = `git ls-files -z`.split("\x0")
  s.homepage    =
      'http://rubygems.org/gems/hola'
  s.license     = 'MIT'
  s.require_paths = ['lib']

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"

  s.add_runtime_dependency 'activeadmin'
  s.add_runtime_dependency 'jquery-rails'
  s.add_runtime_dependency 'rails-assets-webui-popover'
end