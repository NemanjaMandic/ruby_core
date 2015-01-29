File.open("./my_file.txt", "a+") do |file|
 file.puts "Hello world!"
end



File.open("./my_file.txt", "a+") do |file|
   file.puts "Hello world again !"
 end  
 
 puts IO.readlines('my_file.txt')