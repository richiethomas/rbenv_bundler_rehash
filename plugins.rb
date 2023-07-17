require 'rbenv_bundler_rehash'
require 'byebug'

# debugger

Bundler::Plugin.add_hook('after-install-all') do |dependencies|
  debugger
  RbenvBundlerRehash.perform
end

Bundler::Plugin.add_hook('after-uninstall-all') do |dependencies|
  RbenvBundlerRehash.perform
end
