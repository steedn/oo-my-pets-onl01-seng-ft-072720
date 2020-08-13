class Cat
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
  end
  def save 
    @@all << self
  end
  def self.all
  end
end
