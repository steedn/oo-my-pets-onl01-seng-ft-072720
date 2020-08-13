class Dog
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood, :dogs
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @dogs = []
    @owner.dogs << self
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
end
