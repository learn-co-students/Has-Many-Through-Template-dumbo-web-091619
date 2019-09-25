#class for Model2 goes here
#Feel free to change the name of the class
class Park

    attr_reader :name, :address, :opening_time, :closing_time

    @@all = []

    def initialize(name, address, opening_time = 8, closing_time = 20)
        @name = name
        @address = address
        @opening_time = opening_time
        @closing_time = closing_time
        @@all << self

    end

    def self.all
        @@all
    end

    # helper method
    def dogs
        Dog.all.select do |dog|
            dog.park === self
        end
    end

    def watchers
        self.dogs.map do |dog|
            dog.watcher
        end
    end

    def self.open_latest
        @@all.max_by do |park|
            park.closing_time
        end
    end

    def self.most_popular
        @@all.max_by do |park|
            park.dogs.length
        end
    end
end
