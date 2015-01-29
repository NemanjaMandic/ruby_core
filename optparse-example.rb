require 'ostruct'
require 'optparse'
require 'open-uri'

class MyParser
 def self.parse(args)
    options = OpenStruct.new
	opts = OptionParser.new do |opts|
	  opts.banner = "Usage: url"
	  
	  opts.on('-u', '--url URL', 'Fetches the given url') do |url|
	    options.url = url
	  end
	 end
	 
	 begin
	   opts.parse!(args)
	   rescue Exception => e
	   puts "Exception encountered: #{e}"
	   puts opts
	   exit 1
   end
   
   options
   
    end
 end
 
 options = MyParser.parse(ARGV)
 
 if options.url
  puts open(options.url).read
 end
 
 
 
 
 
 