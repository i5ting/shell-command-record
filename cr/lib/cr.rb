require "cr/version"
require "cr/start"
require "cr/show"

module Cr
  # Your code goes here...
  def self.init(cmd_parse)
    cp = cmd_parse
    
    cp.add_command(Cr::StartCommand.new)
    cp.add_command(Cr::ShowCommand.new)
  end
  
end
