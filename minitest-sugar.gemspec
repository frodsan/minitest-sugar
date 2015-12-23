Gem::Specification.new do |s|
  s.name        = "minitest-sugar"
  s.version     = "1.0.1"
  s.summary     = "Enough sugar for your minitest diet."
  s.description = s.summary
  s.authors     = ["Francesco Rodriguez"]
  s.email       = ["frodsan@me.com"]
  s.homepage    = "https://github.com/frodsan/minitest-sugar"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "minitest", ">= 5.0.0"
end
