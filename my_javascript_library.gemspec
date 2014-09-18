$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "my_javascript_library/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my_javascript_library"
  s.version     = MyJavascriptLibrary::VERSION
  s.authors     = ["Philip Mannheimer"]
  s.email       = ["philip.mannheimer@gmail.com"]
  s.homepage    = "http://www.nicesprites.se"
  s.summary     = "A set of nice functions to have when building webapps."
  s.description = "A set of nice functions to have when building webapps."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'capybara'
end
