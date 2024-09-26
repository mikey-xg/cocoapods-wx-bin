#!/usr/bin/env ruby
require 'cocoapods'

module Pod
  class Command
    class wx < Command
      self.summary = 'Cat bin'
      self.description = 'Cat bin.'

      def initialize(argv)
        super
      end

      def run
        p '12345'
      end

    end

  end

end