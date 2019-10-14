class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)

        @name = name 
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        follower_cults = []
        BloodOath.all.select do |bloodoaths| 
            if bloodoaths.follower == self
                follower_cults.push(bloodoaths.cult.name)
            end
        end
        follower_cultsof
    end

    def join_cult(cult_given)
        BloodOath.new(cult_given, self, Time.now.strftime("%Y/%m/%d"))
    end

    def self.of_a_certain_age(age_given)
        Follower.all.select {|followers| followers.age >= age_given}
    end

end