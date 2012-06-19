$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sql_metrics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sql_metrics"
  s.version     = SqlMetrics::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SqlMetrics."
  s.description = "TODO: Description of SqlMetrics."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "mongo_mapper"
  s.add_dependency "mongo" 
  s.add_dependency "bson_ext"
  # s.add_dependency "jquery-rails"
  # s.add_dependency "jquery-rails"
end
