require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
temp = Cult.new("Fonzie order","Seattle", 2019, "ayyyyyyyeee")
temp1 = Cult.new("Jens order","Seattle", 2018, "wooooooooooo!!!!")
temp2 = Cult.new("shawns order","Alabama", 2019, "We're evil")
temp3 = Follower.new("Jen",35, "yayyy...")
temp4 = Follower.new("Katrina", 24, "foooooooddddd")
temp5 = BloodOath.new(temp,temp3, "2019-10-12")
temp9 = Follower.new("Shawn", 12, "I'm a baby")
temp6 = BloodOath.new(temp, temp9, "2019-10-12")
temp7 = BloodOath.new(temp1,temp4, "2019-10-14")
temp8 = BloodOath.new(temp2,temp4, "2019-10-15")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
