require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
temp2 = Cult.new("shawns order","Alabama", 2019, "We're evil")
temp10 = Cult.new("Katrina order","Alabama", 2012, "All we do is eat!")
temp = Cult.new("Fonzie order","Seattle", 2019, "ayyyyyyyeee")
temp1 = Cult.new("Jens order","Seattle", 2018, "wooooooooooo!!!!")
temp9 = Follower.new("Shawn", 12, "I'm a baby")
temp3 = Follower.new("Jen",35, "yayyy...")
temp4 = Follower.new("Katrina", 24, "foooooooddddd")
temp11 = Follower.new("temp11", 24, "temp1")
temp12 = Follower.new("temp12", 24, "temp2")
temp13 = Follower.new("temp13", 24, "temp3")
temp14 = Follower.new("temp14", 24, "temp4")
temp15 = Follower.new("temp15", 24, "temp5")
temp16 = Follower.new("temp16", 24, "temp6")
temp17 = Follower.new("temp17", 24, "temp7")
temp18 = Follower.new("temp18", 24, "temp8")
temp20 = BloodOath.new(temp,temp11,"2019-10-14")
temp21 = BloodOath.new(temp1,temp11,"2019-10-14")
temp22 = BloodOath.new(temp,temp12,"2019-10-14")
temp23 = BloodOath.new(temp,temp13,"2019-10-14")
temp24 = BloodOath.new(temp1,temp13,"2019-10-14")
temp25 = BloodOath.new(temp2,temp13,"2019-10-14")
temp26 = BloodOath.new(temp,temp14,"2019-10-14")
temp27 = BloodOath.new(temp2,temp14,"2019-10-14")
temp28 = BloodOath.new(temp,temp15,"2019-10-14")
temp29 = BloodOath.new(temp1,temp15,"2019-10-14")
temp30 = BloodOath.new(temp,temp16,"2019-10-14")
temp31 = BloodOath.new(temp,temp17,"2019-10-14")
temp32 = BloodOath.new(temp1,temp17,"2019-10-14")
temp33 = BloodOath.new(temp2,temp17,"2019-10-14")
temp34 = BloodOath.new(temp10,temp17,"2019-10-14")
temp35 = BloodOath.new(temp,temp18,"2019-10-14")
temp36 = BloodOath.new(temp2,temp18,"2019-10-14")
temp37 = BloodOath.new(temp,temp4,"2019-10-14")
temp38 = BloodOath.new(temp10,temp4,"2019-10-14")
temp39 = BloodOath.new(temp,temp3,"2019-10-14")
temp5 = BloodOath.new(temp,temp3, "2019-10-12")
temp6 = BloodOath.new(temp, temp9, "2019-10-12")
temp7 = BloodOath.new(temp1,temp4, "2019-10-14")
temp8 = BloodOath.new(temp2,temp4, "2019-10-15")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits