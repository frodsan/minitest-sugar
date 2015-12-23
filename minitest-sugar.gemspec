require_relative "lib/minitest/sugar/version"

Gem::Specification.new do |s|
  s.name        = "minitest-sugar"
  s.version     = Minitest::Sugar::VERSION
  s.summary     = "Helper to define a test method using a String"
  s.description = "Enough sugar for your minitest diet"
  s.authors     = "Francesco Rodriguez"
  s.email       = "frodsan@protonmail.ch"
  s.homepage    = "https://github.com/frodsan/minitest-sugar"
  s.license     = "MIT"

  s.files       = Dir["LICENSE", "README.md", "lib/**/*.rb"]
  s.test_files  = Dir["test/**/*.rb"]

  s.add_dependency "minitest", "~> 5.0"
end
