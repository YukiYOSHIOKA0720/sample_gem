require_relative 'lib/yoshioka_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "yoshioka_gem"
  spec.version       = SampleGem::VERSION
  spec.authors       = ["Yuki YOSHIOKA"]
  spec.email         = ["y.yoshioka0720@gmail.com"]

  spec.summary       = %q{yoshioka gem with C}
  spec.description   = %q{yoshioka gem to greet someone with C}
  spec.homepage      = "https://github.com/YukiYOSHIOKA0720/yoshioka_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/YukiYOSHIOKA0720/yoshioka_gem"
  spec.metadata["changelog_uri"] = "https://github.com/YukiYOSHIOKA0720/yoshioka_gem/changelog.mod"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = %w{ext/yoshioka_gem/extconf.rb}
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"
end
