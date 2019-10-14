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
        follower_cults
    end

    def join_cult(cult_given)
        BloodOath.new(cult_given, self, Time.now.strftime("%Y/%m/%d"))
    end

    def self.of_a_certain_age(age_given)
        Follower.all.select {|followers| followers.age >= age_given}
    end

    def my_cults_slogans
        BloodOath.all.select do |bloodoaths|
            bloodoaths.follower == self
        end.map {|bloodoath| bloodoath.cult.slogan} 

    end

    def self.most_active
        followers = BloodOath.all.map {|bloodoaths| bloodoaths.follower}
        followers.max_by{|bloodoath| followers.count(bloodoath)}
    end

    def self.top_ten
        followers = BloodOath.all.map {|bloodoaths| bloodoaths.follower}
        followers_count = Hash.new(0)
        followers.each {|follower| followers_count[follower] += 1}
        followers_count.sort_by {|follower, number| number * -1}.first(10)
    end

    # def fellow_cult_members
    #     BloodOath.all.each do |bloodoaths|
    #         if [bloodoaths.cult.name].include?(cults)
    #             puts "duck"
    #         end
    #     end
    # end
end