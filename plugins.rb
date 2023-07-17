require 'rbenv_bundler_rehash'

Bundler::Plugin.add_hook('after-install-all') do |dependencies|
  RbenvBundlerRehash.perform
end
