require "pry"

class Cat
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood, :cats
  @cats = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @cats = []
    save
    # binding.pry
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def cats
    @owner.cats << self
  end
end
