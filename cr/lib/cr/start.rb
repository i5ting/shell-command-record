 
module Cr
  class StartCommand < CmdParse::Command

    def initialize
      super( 'start', false )
      self.short_desc = "tag it for command record start"
      self.description = "This command will tag it for command record start!!!"
    end

    def execute( args )
      puts "Showing network statistics" if $verbose
      puts
      puts "Yeah, I will do something now..."
      puts
      1.upto(10) do |row|
        puts " "*(20-row) + "#"*(row*2 - 1)
      end
      puts
    end

  end
    
end
