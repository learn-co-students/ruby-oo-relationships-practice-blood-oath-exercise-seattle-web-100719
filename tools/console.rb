require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
sarah = Follower.new(23)


illuminati = Cult.new("federal reserve")	
illuminati.name="illuminati"
illuminati.founding_year=1776
illuminati.slogan="In God We Trust"
scientology = Cult.new("california")	
scientology.name = "scientology"
scientology.founding_year = 1770
scientology.slogan = "We love Tom Cruise"
branchdavidians = Cult.new("texas")	
branchdavidians.name = "branch davidians"
branchdavidians.founding_year = 1993
branchdavidians.slogan = "Come at us bro"

ladygaga = Follower.new(25)	
ladygaga.name = "Lady Gaga"
ladygaga.life_motto = "Bad Romance"

tomcruise = Follower.new(54)
tomcruise.name = "Tom Cruise"
tomcruise.life_motto =  "I love my ex-wife"

david = Follower.new(35)	
david.name = "David Branch"
david.life_motto = "I'm Jesus"

sarah = Follower.new(23)
sarah.name = "Sarah"
sarah.life_motto = "I love cats"

oath1 = BloodOath.new(ladygaga, illuminati)	
oath2 = BloodOath.new(tomcruise, scientology)	
oath3 = BloodOath.new(david, branchdavidians)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
