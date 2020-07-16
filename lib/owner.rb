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

  end
  # code goes here
end
