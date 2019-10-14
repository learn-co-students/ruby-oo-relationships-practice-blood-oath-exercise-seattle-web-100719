class Blood_Oath

    attr_accessor :follower, :cult
    attr_reader :initiation_date
    @@all = []

    def initialize(follower, cult, initiation_date)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        @@all[0]
    end


    
end
