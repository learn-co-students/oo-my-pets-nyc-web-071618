require "pry"
require_relative "./cat"
require_relative "./dog"
require_relative "./fish"

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    "I am a human."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].map! do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].map! do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].map! do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets[:dogs].map! do |dog|
      dog.mood = 'nervous'
    end
    self.pets[:cats].map! do |cat|
      cat.mood = 'nervous'
    end
    self.pets[:fishes].map! do |fish|
      fish.mood = 'nervous'
    end
    self.pets.clear
  end

  def list_pets
    my_dogs = self.pets[:dogs].select{|dog| dog.name}.count
    my_cats = self.pets[:cats].select{|cat| cat.name}.count
    my_fish = self.pets[:fishes].select{|fish| fish.name}.count
    "I have #{my_fish} fish, #{my_dogs} dog(s), and #{my_cats} cat(s)."
  end

end

# jim = Owner.new("Jim")
# bob = Owner.new("Bob")
#
# dog1 = jim.buy_dog("wolf")
# cat1 = bob.buy_cat("lion")
# fish1 = bob.buy_fish("tuna")
# binding.pry
