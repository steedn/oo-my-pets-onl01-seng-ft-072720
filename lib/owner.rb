class Owner

  @@all = []
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
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
end
