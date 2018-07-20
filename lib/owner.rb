require 'pry'

class Owner
  # code goes heres
  attr_accessor :cat, :dog, :fish, :name, :pets
  attr_reader :species

  @@all = []

  def initialize (species, pets = {fishes: [], cats: [], dogs: []})
    @pets = pets
    @species = species
    @@all << self
  end

  def self.reset_all
    self.all.clear
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
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
    self.pets[:dogs].select{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].select{|cat| cat.mood = "happy"}
  end

  def feed_fish
      self.pets[:fishes].select{|fish| fish.mood = "happy"}
    end

  def sell_pets
    self.pets.each do |type, type_instance|
      self.pets[type]. each do |pet_instance|
        pet_instance.mood = "nervous"
      end
      end
      self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
