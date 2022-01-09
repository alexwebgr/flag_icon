lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flag_icon/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "flag_icon"
  spec.version       = FlagIcon::Rails::VERSION
  spec.authors       = ['alexwebgr']
  spec.email         = ['email@alex-web.gr']

  spec.summary = "An attempt to map languages to country flags"
  spec.description = "A gem that contains view helpers for language names, country names and language to flags"
  spec.homepage = "https://github.com/alexwebgr/flag_icon"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/alexwebgr/flag_icon"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(bin|test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", '"vendor"']

  spec.add_development_dependency "rails"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov"
end
