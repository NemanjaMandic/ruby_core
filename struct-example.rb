﻿Island = Struct.new(:name, :location) do

def to_s
  "<#{name}, #{location}>"
  end
  
  def travel
    puts "Going to #{location} location..."
  end
 end

treehouse = Island.new("Treehouse", "Undisclosed")

 treehouse.travel 