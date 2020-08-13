require "pry"

class Owner

  @@all = []
  attr_reader :name, :species
  # attr_accessor :cats, :dogs
  def initialize(name)
    @name = name
    @species = "human"
    # @cats = []
    # @dogs = []
    save
  end
  def say_species
    "I am a #{@species}."
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end
  def buy_cat(name)
    Cat.new(name, self)
  end
  def buy_dog(name)
    Dog.new(name, self)
  end
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def sell_pets
    pets = self.dogs + self.cats
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
      # binding.pry
    end
  end
  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
end
