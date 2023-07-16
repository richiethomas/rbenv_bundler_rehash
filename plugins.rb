require 'rbenv_bundler_rehash'

Bundler::Plugin.add_hook('after-install-all') do |dependencies|
  RbenvBundlerRehash.perform
end

Bundler::Plugin.add_hook('after-uninstall-all') do |dependencies|
  RbenvBundlerRehash.perform
end
