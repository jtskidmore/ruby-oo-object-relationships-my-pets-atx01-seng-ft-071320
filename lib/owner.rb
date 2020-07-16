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

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    dog_counter = 0
    Dog.all.each do |dog|
      if dog.owner == self
        dog_counter += 1
      end
    end
    cat_counter = 0
    Cat.all.each do |cat|
      if cat.owner == self
        cat_counter += 1
      end
    end
    "I have #{dog_counter} dog(s), and #{cat_counter} cat(s)."
  end
  # code goes here
end
