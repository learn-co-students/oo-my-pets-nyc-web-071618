class Owner
  # code goes here
  ALL = []
  attr_reader :species
  attr_accessor :name, :pets
  def initialize(species)
    @species = species
    @pets ={fishes: [], cats: [], dogs: []}
    ALL << self
  end

  def self.all
    ALL
  end

  def self.reset_all
    ALL.clear
  end

  def self.count
    ALL.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |x|
      x.mood = "happy"
  end
end

  def play_with_cats
    pets[:cats].each do |x|
      x.mood = "happy"
  end
end

  def feed_fish
    pets[:fishes].each do |x|
      x.mood = "happy"
  end
end

  def sell_pets
    pets.each do |species, animal|
      animal.each do |values|
        values.mood = "nervous"
   end
  end
 pets.clear
end


  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end

end
