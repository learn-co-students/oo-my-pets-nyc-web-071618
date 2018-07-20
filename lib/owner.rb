require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_reader :species, :name
  attr_accessor :pets

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end

def self.count
  @@all.count
end

def self.reset_all
  @@all = []
end

def species(species = "human")
  @species = species
end

def say_species
# binding.pry
  "I am a #{self.species}."
end

def name=(name)
  @name = name
end

def buy_fish(name)
  # binding.pry
  @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
# binding.pry
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |pet_type, pets|
    pets.each do |pet|
      pet.mood = "nervous"
    end
  end
  @pets = @pets = {fishes: [], cats: [], dogs: []}
end

def list_pets
  # binding.pry
  cat_count = @pets[:cats].length
  dog_count = @pets[:dogs].length
  fishes_count = @pets[:fishes].length
  "I have #{fishes_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
end
end
