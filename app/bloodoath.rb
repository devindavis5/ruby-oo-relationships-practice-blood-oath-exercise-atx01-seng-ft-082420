class BloodOath
    attr_accessor :cult, :follower, :initiation_date
    @@all = []
    def initialize(cult, follower, initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all.min_by do |b|
            b.initiation_date
        end.follower
    end
end