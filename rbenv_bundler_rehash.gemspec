require_relative 'lib/rbenv_bundler_rehash/version'

Gem::Specification.new do |spec|
  spec.name          = "rbenv_bundler_rehash"
  spec.version       = RbenvBundlerRehash::VERSION
  spec.authors       = ["Richie Thomas"]
  spec.email         = ["rickthomas1980@gmail.com"]

  spec.summary       = %q{Installs a Bundler plugin to rehash your RBENV shims whenever a gem is installed or uninstalled.}
  spec.description   = %q{As part of managing Ruby versions, RBENV uses shim files to intercept calls to Ruby executables.  These shim files must be regenerated whenever a gem is installed or uninstalled.  This plugin adds `POST_INSTALL` and `POST_UNINSTALL` Bundler hooks to enable that process automatically.}
  spec.homepage      = "https://github.com/richiethomas/rbenv_bundler_rehash"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/richiethomas/rbenv_bundler_rehash"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/richiethomas/rbenv_bundler_rehash"
  spec.metadata["changelog_uri"] = "https://github.com/richiethomas/rbenv_bundler_rehash"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
