require 'pry'

class Owner

  attr_reader :name, :species

  @@all = []

  def initialize (name)
    @name = name
    @species = "human"
    self.class.all << self
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat (cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog (dog_name)
    Dog.new(dog_name, self)
  end
  # code goes here
end
