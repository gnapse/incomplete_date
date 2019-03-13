$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "incomplete_date/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "incomplete_date"
  spec.version     = IncompleteDate::VERSION
  spec.authors     = ["gnapse", "ErCollao"]
  spec.email       = ["gnapse@gmail.com", "daniel@collado-ruiz.es"]
  spec.homepage    = "https://github.com/gnapse/incomplete_date"
  spec.summary     = "This plugin allows a Rails application to store and manage incomplete date data,
which is very common in historical archives, particularly in genealogy."
  spec.description = "This plugin creates a Value Object class that controls the logic of incomplete dates. It also creates a class method incomplete_date_attr to hook onto Active Record objects, so some of the attributes are stored in the database as an integer instead of a date"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  spec.add_dependency "rails"

  spec.add_development_dependency "sqlite3", "~> 1.3.6"
end
