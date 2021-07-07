class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(age)
        @age = age
        @@all << self
    end

    def cults
        array = []
        BloodOath.all.each do |blood_oath|
            if blood_oath.follower == self
                array << blood_oath.cult
            end
        end
        array
    end

    def join_cult(cult)
        if self.age < cult.minimum_age
            puts "Sorry, you're not old enought to join."
        else
            BloodOath.new(self, cult)
        end
    end

    def my_cults_slogans
        cults.each do |cult|
            puts cult.slogan 
        end
        nil
    end

    def fellow_cult_members
        array = self.cults
        BloodOath.all.select do |blood_oath|
            array.include?(blood_oath.cult) && blood_oath.follower != self
        end.map { |blood_oath| blood_oath.follower}.uniq
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select do |follower|
            follower.age >= age
        end
    end

    def self.most_active
        max = 0
        max_key = ""
        follower_cults = BloodOath.all.group_by do |blood_oath|
            blood_oath.follower
        end
        follower_cults.each do |key, val|
            if val.length > max
                max_key = key
                max = val.length
            end
        end
        max_key
    end

    def self.top_ten
        @@all.sort_by do |follower|
            -follower.cults.length
        end[0...10]
    end
end