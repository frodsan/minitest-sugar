require_relative "lib/minitest/sugar/version"

Gem::Specification.new do |s|
  s.name        = "minitest-sugar"
  s.version     = Minitest::Sugar::VERSION
  s.summary     = "Useful helpers for Minitest 5+"
  s.description = "Enough sugar for your Minitest diet"
  s.author      = "Francesco Rodriguez"
  s.email       = "frodsan@protonmail.ch"
  s.homepage    = "https://github.com/frodsan/minitest-sugar"
  s.license     = "MIT"

  s.files       = Dir["LICENSE", "README.md", "lib/**/*.rb"]
  s.test_files  = Dir["test/**/*.rb"]

  s.add_dependency "minitest", "~> 5.0"
end
