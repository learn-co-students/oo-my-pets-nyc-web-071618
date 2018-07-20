require 'pry'

class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def initialize(species, pets={fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end

  def walk_dogs
    self.pets[:dogs].select do |dogs| dogs.mood="happy"
    end
  end

  def play_with_cats
    self.pets[:cats].select do |cats| cats.mood="happy"
    end
  end

  def feed_fish
    self.pets[:fishes].select do |fish| fish.mood="happy"
    end
  end

  def sell_pets
    self.pets.map do |key, value|
      value.each do |pets|
        pets.mood="nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end #end owner class
