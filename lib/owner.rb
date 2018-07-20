require 'pry'

class Owner
  # code goes here
  @@all = []

  attr_reader :species
  attr_accessor :pets, :name

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
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
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    # pet_fish = Fish.all.find do |fish|
    #   fish.name == fish_name
    fish_instance = Fish.new(fish_name)
      @pets[:fishes] << fish_instance
  end

  def buy_cat(cat_name)
    cat_instance = Cat.new(cat_name)
      @pets[:cats] << cat_instance
  end

  def buy_dog(dog_name)
    dog_instance = Dog.new(dog_name)
      @pets[:dogs] << dog_instance
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
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
    @pets.each do |pets_type, pets_array|
      pets_array.each do |pet|
        pet.mood = "nervous"
      end
    pets_array.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
