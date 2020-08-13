class Cat

  attr_reader :name, :mood
  attr_accessor :owner
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end
