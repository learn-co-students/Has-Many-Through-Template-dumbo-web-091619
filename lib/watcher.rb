#class for Model3 goes here
#Feel free to change the name of the class
class Watcher

    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self

    end

    def self.all
        @@all
    end

    def self.oldest_watcher
        self.all.max_by { |watcher| watcher.age}
    end

    # helper function
    def dogs
        Dog.all.select do |dog|
            dog.watcher === self
        end
    end

    def favorite_parks
        self.dogs.map do |dog|
            dog.park
        end
    end
  
end
