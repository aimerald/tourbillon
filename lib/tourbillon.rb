require "tourbillon/version"
require 'pry'

module Tourbillon
  class Error < StandardError; end

  def self.flow_of_time

    sleep 1
    # NOTE: ここで無限ループすることで停止させるまで永遠に動き続ける
    flow_of_time
  end
end
