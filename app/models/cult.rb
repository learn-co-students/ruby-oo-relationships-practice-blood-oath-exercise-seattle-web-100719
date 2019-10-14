require 'date'
require_relative 'follower'
require_relative 'bloodoath'

class Cult

    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def self.find_by_name(cult_name)
        Cult.all.detect {|cults| cult_name == cults.name}
    end

    def self.find_by_location(cult_location)
        Cult.all.select {|cults| cult_location == cults.location}
    end

    def self.find_by_founding_year(cult_year)
        Cult.all.select {|cults| cult_year == cults.founding_year}
    end

    def self.all
        @@all
    end

    def recruit_follower(new_follower)
        BloodOath.new(self, new_follower, Time.now.strftime("%Y/%m/%d"))
    end

    def cult_population
        BloodOath.all.select {|bloodoaths| bloodoaths.cult == self}.length
    end

    
end
