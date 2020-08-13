require "pry"

class Cat
  @@all = []
  attr_reader :name, :cats
  attr_accessor :owner, :mood
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @cats = []
    @cats << self
    save
    # binding.pry
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
end
