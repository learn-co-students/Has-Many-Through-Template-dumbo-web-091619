#class for Model1 goes here
#Feel free to change the name of the class
# one dog has one owner and one park
# connector class
class Dog

    attr_accessor :name, :watcher, :park, :age, :breed, :favorite_toy

    @@all = []

    def initialize(name, watcher, park, age, breed, favorite_toy)
        @name = name
        @watcher = watcher
        @park = park
        @age = age
        @breed = breed
        @favorite_toy = favorite_toy
        @@all << self
    end

    def self.all
        @@all
    end


end
