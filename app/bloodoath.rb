class BloodOath
    attr_accessor :follower, :cult
    attr_reader :initiation_date

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        date = Time.new
        @initiation_date = date.inspect[0...10]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        @@all.min_by do |blood_oath|
            blood_oath.initiation_date
        end
    end

end