lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin/regex-input/version'

Gem::Specification.new do |s|
  s.name        = 'activeadmin-regex-input'
  s.version     = '0.1.0'
  s.date        = '2018-03-14'
  s.summary     = "Formtastic Regex Input"
  s.description = "A simple filter input for active admin with checking at client if input match predefined regex."
  s.authors     = ["Canh Nguyen"]
  s.email       = 'xuancanh.1994@gmail.com'
  s.files       = `git ls-files -z`.split("\x0")
  s.homepage    = 'https://github.com/xuancanh/activeadmin-regex-input'
  s.license     = 'MIT'
  s.require_paths = ['lib']

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake", "~> 12"

  s.add_runtime_dependency 'activeadmin', '~> 1.0'
  s.add_runtime_dependency 'jquery-rails', '~> 3.1'
end