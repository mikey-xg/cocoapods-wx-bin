# frozen_string_literal: true
# encoding: UTF-8
# require_relative "lib/cocoapods/wx/bin/version"

require File.expand_path('../lib/cocoapods-wx-bin/gem_version', __FILE__)

Gem::Specification.new do |spec|
  spec.name = "cocoapods-wx-bin"
  spec.version = WXBin::VERSION
  spec.authors = ["suwenxiao"]
  spec.email = ["475472393@qq.com"]

  spec.summary = "wx bin."
  spec.description = "wx bin desc."
  spec.homepage = "https://github.com/CocoaPods/CocoaPods"
  spec.license = "MIT"
  spec.required_ruby_version = '>= 2.6.0' # ruby 版本

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(__dir__) do
  #   `git ls-files -z`.split("\x0").reject do |f|
  #     (File.expand_path(f) == __FILE__) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
  #   end
  # end

  # %w[]  定义的是字符串数组，通过空格进行拆分  %w[.txt .md]
  spec.files = Dir["lib/**/*.rb"] + %w[README.md]
  spec.bindir = "exe"  
  spec.executables = %w[wx_bin]
  spec.require_paths = ["lib"]
  # spec.add_runtime_dependency 'cocoapods', '~>1.12.1'
   spec.add_runtime_dependency 'cocoapods'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
