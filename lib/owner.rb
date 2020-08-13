class Owner

  @@all = []
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
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
    @@all.count
  end
end
