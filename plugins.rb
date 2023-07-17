require 'rbenv_bundler_rehash'

Bundler::Plugin.add_hook('after-install-all') do |dependencies|
  puts "inside after-install-all"
  RbenvBundlerRehash.perform
end
