class Cat

  attr_reader :name

  @@all = []

  def initialize (name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    self.class.all << self
  end

  def owner
    @owner
  end

  def self.all
    @@all
  end

  # code goes here
end
