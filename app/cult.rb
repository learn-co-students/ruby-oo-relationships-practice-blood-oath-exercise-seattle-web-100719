class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    attr_reader :minimum_age

    @@all = []

    def initialize(location, minimum_age = 18)
        @minimum_age = minimum_age
        @location = location
        @@all << self
    end

    def recruit_follower(follower)
        if follower.age < self.minimum_age
            puts "I'm sorry, you are too young to join the #{self.name}"
        else
            BloodOath.new(follower, self)
        end
    end

    def followers
        array = []
        BloodOath.all.each do |blood_oath|
            if blood_oath.cult == self
                array << blood_oath.follower
            end
        end
        array
    end

    def cult_population
        self.followers.length
    end

    def average_age
        sum = 0
        self.followers.each do |follower|
            sum += follower.age 
        end 
        sum.to_f / cult_population.to_f
    end

    def my_followers_mottos
        followers.each do |follower|
            puts follower.life_motto
        end
        nil
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.detect do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        @@all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        @@all.select do |cult|
            cult.founding_year == year
        end 
    end

    def self.least_popular
        @@all.min_by do |cult|
            cult.cult_population
        end
    end

    def self.most_common_location
        max = 0
        max_key = ""
        locations = @@all.group_by{ |cult| cult.location }
        locations.each do |key, val|
            if val.length > max
                max_key = key
                max = val.length
            end
        end
        max_key
    end
end