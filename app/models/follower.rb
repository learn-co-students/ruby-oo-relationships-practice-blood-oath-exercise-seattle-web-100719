class Follower

    attr_accessor :cult
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        Cult.all.map do |cult|
            cult.follower == self
        end
    end

    def join_cult(cult)
        cult.recuit_follower(self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        all.select do |follower|
            follower.age >= age
        end
    end

    def my_cults_slogans
        arr = []
        Blood_Oath.all.each do |oath|
            if oath.follower == self
                arr << oath.cult.slogan
            end
        end
        arr
    end

    def total_cult_number
        count = 0
        Blood_Oath.all.each do |oath|
            if oath.follower == self
                if oath.cult.nil?
                    next
                else
                    count += 1
                end
            end
        end
        count
    end

    def self.most_active
        max = 0
        maxCult = nil
        Blood_Oath.all.each do |oath|
            if oath.follower.total_cult_number > max
                max = oath.follower.total_cult_number
                maxCult = oath.follower
            end
        end
        maxCult
    end

    def self.top_ten
        Follower.all.sort_by do |follower|
            follower.total_cult_number
        end.slice(0..9)
    end

    def fellow_cult_members
        arr = Blood_Oath.all.map do |oath|
            if oath.follower == self
                oath.cult
            end
        end
        res = []
        arr.each do |e|
            Blood_Oath.all.each do |oath|
                if e == oath.cult && oath.follower != self
                    res << oath.follower
                end
            end
        end
        res
    end

    def join_cult(cult)
        if self.age < cult.minimum_age
            puts "You are too young to join this cult sorry."
        else
            Blood_Oath.new(self, cult, Time.now)
        end
    end

end