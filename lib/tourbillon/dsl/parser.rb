require 'pry'
require 'active_support'

module Tourbillon
  module DSL
    class Parser
      class << self
        def exec(path = 'config/cron.rb')
          file = read_file(path)
          binding.pry
          eval(file)
        end

        # NOTE: every is every!
        def every(time, at: nil)

        end

        def sys(command)
          `command`
        end

        private

        def read_file(path)
          file = File.read(path)
        end
      end
    end
  end
end
