lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dgt_finder/version'

Gem::Specification.new do |gem|
  gem.name = 'dgt_finder'
  gem.version = DGTFinder::VERSION
  gem.authors = ['Ricardo Cámara']
  gem.email = ['rcamara9@gmail.com']
  gem.date = '2019-10-17'
  gem.summary = 'Allows to find fines in the Spanish Fine System (DGT)'
  gem.homepage = ''

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'selenium-webdriver'

  gem.add_development_dependency 'rspec', '~> 3.0'
end