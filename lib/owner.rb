class Owner

  @@all = []
  attr_reader :name, :species
  attr_accessor :cats, :dogs, :buy_cat
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

end
