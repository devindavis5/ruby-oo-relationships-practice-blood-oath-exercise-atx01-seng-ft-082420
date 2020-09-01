class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    @@all = []
    def initialize(name, location, founding_year = 0, slogan)
        @name = name
        @location = location
        @founding_year = founding_year.to_i
        @slogan = slogan
        self.class.all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower, date = Time.now)
        BloodOath.new(self,follower,date)
    end

    def blood_oaths
        BloodOath.all.select do |b|
            b.cult == self
        end
    end

    def followers
        self.blood_oaths.map do |b|
            b.follower
        end
    end

    def cult_population
        followers.count
    end

    def self.cult_find_by_name(name)
        self.all.select do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end
    end
end