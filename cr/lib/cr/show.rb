require "iconv"  
  
class String  
  def to_gbk  
    Iconv.iconv("GBK//IGNORE", "UTF-8//IGNORE", self).to_s  
  end  
  
  def to_utf8  
    #p "my own string"  
    Iconv.iconv("UTF-8//IGNORE", "GBK//IGNORE", self).to_s  
  end  
  
  def to_utf8_valid  
  
    if !self.valid_encoding?  
      ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')  
      return ic.iconv(self)  
    end  
    self  
  end  
  
end  

module Cr
  class ShowCommand < CmdParse::Command

    def initialize
      super( 'show', false )
      self.short_desc = "Show current all recorded commands"
      self.description = "This command shows  current all recorded commands!!!"
    end

    def execute( args )
      puts "Showing network statistics" if $verbose
      puts
      puts "read file .zsh-his"
      puts
      
      read_file();
      
      puts
      
    end #end execute
    
    def read_file
      File.expand_path('~')
      file=File.open(File.expand_path("~/.zsh_history"),"r")            #打开D盘的文件,将其输入到屏幕
      file.each_line do |line|
 
      
      
          if ( line =~ /*start / )
            puts "Line1 starts with Cats"
          end
         
      end
      file.close
    end

  end #end class
end