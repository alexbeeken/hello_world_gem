$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hello_world/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hello_world"
  s.version     = HelloWorld::VERSION
  s.authors     = ["Alex Beeken"]
  s.email       = ["aeb242@gmail.com"]
  s.homepage    = "http://www.alexlearns.org"
  s.summary     = "Hello world gem for explaining how to setup a gem"
  s.description = "Shows a simple hello world page"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end
