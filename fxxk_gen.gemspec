
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fxxk_gen/version"

Gem::Specification.new do |spec|
  spec.name          = "fxxk_gen"
  spec.version       = FxxkGen::VERSION
  spec.authors       = ["natmark"]
  spec.email         = ["natmark0918@gmail.com"]

  spec.summary       = %q{Code generator for languages derived from Brainfxxk}
  spec.description   = %q{fxxk_gen is code generator for languages derived from Brainfxxk. It was impressed by r-fxxk.}
  spec.homepage      = "https://github.com/natmark/fxxk_gen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
