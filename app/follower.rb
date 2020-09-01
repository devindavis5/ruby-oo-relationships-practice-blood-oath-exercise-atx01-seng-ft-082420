class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []
    def initialize(name, age = 0, life_motto)
        @name = name
        @age = age.to_i
        @life_motto = life_motto
        self.class.all << self
    end

    def self.all
        @@all
    end

    def bloodoaths
        BloodOath.all.select do |b|
            b.follower == self
        end
    end

    def cults
        self.bloodoaths.map do |b|
            b.cult
        end
    end

    def join_cult(cult, date = Time.now)
        BloodOath.new(cult, self, date)
    end

    def self.of_a_certain_age(age)
        self.all.select do |f|
            f.age >= age
        end
    end
    
end