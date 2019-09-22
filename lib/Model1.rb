#class for Model1 goes here
#Feel free to change the name of the class
class Club
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
