require 'pry'

class Fish
  # code goes here

    attr_reader :name
    attr_accessor :mood

    @@all = []

    def initialize(name)
      @name = name
      @@all << name
      @mood = "nervous"
    end

end
