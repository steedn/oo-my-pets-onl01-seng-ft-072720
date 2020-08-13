require "pry"

class Cat
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood, :cats
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @owner.cats << self
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
