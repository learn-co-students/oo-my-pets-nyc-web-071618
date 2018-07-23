class Animal
  attr_reader :name
  attr_accessor :mood
  #exposes varible to program
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
