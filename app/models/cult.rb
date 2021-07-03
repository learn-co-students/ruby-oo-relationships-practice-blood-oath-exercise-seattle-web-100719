class Cult

    attr_reader :name, :location, :founding_year, :slogan, :minimum_age
    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        if follower.age < @minimum_age
            puts "You are too young to join this cult sorry."
        else
            Blood_Oath.new(follower, self, Time.now)
        end
    end

    def cult_population
        count = 0
        Blood_Oath.all.each do |oath|
            if oath.cult == self
                if oath.follower.nil?
                    next
                else
                    count += 1
                end
            end
        end
        count
    end

    def self.find_by_name(name)
        all.each do |cult|
            if cult.name == name
                return cult
            else
                return nil
            end
        end
    end

    def self.find_by_location(location)
        all.map do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        all.map do |cult|
            cult.founding_year == founding_year
        end
    end

    def average_age
        sum = 0.0
        Blood_Oath.all.each do |oath|
            if oath.cult == self
                sum += oath.follower.age
            end
        end
        sum / self.cult_population
    end

    def my_followers_mottos
        Blood_Oath.all.each do |oath|
            if oath.cult == self
                puts oath.follower.life_motto
            end
        end
    end

    def self.least_popular
        min = Blood_Oath.all[0].cult.cult_population
        minCult = nil
        Blood_Oath.all.each do |oath|
            if oath.cult.cult_population < min
                min = oath.cult.cult_population
                minCult = oath.cult
            end
        end
        minCult
    end

    def self.most_common_location
        cult_count = Hash.new(0)
        all.each do |cult| 
            cult_count[cult] += 1
        end
        cult_count.sort_by do |cult, number| 
            number
        end.last[0].location
    end


end