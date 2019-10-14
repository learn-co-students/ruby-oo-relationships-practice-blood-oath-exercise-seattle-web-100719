require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matt = Follower.new("Matt", 23, "test")

robin = Follower.new("Robin", 21, "test")

dan = Follower.new("Dan", 20, "test")

c1 = Cult.new("Test Cult", "Seattle", 2019, "This is a test.", 2)

c2 = Cult.new("Test Cult 2", "New York City", 2019, "This is a test 2.", 1)

c3 = Cult.new("Test Cult 3", "Seattle", 2019, "This is a test 3.", 1)

c1.recruit_follower(matt)
c1.recruit_follower(robin)

robin.join_cult(c2)
c2.recruit_follower(dan)

c3.recruit_follower(dan)

puts c1.cult_population

puts c1.average_age

puts Cult.find_by_name("Test Cult")

c1.my_followers_mottos

puts Cult.least_popular.name

puts Cult.most_common_location

puts dan.my_cults_slogans

puts Follower.most_active.name

puts ""

puts Follower.top_ten

puts ""

puts matt.fellow_cult_members


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
