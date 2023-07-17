require "rbenv_bundler_rehash/version"
require 'open3'

module RbenvBundlerRehash
  class CouldNotRehashError < StandardError; end

  def self.perform
    stdout, stderr, status = Open3.capture3("rbenv rehash")
    unless stderr.empty?
      raise CouldNotRehashError, stderr
    end
  end
end
