lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "petitest/dsl/version"

Gem::Specification.new do |spec|
  spec.name = "petitest-dsl"
  spec.version = Petitest::Dsl::VERSION
  spec.authors = ["Ryo Nakamura"]
  spec.email = ["r7kamura@gmail.com"]
  spec.summary = "DSL for Petitest."
  spec.homepage = "https://github.com/petitest/petitest-dsl"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "petitest", "~> 0.3.0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
