class Dog

  attr_accessor :owner

  @@all = []

  def initialize (name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    self.class.all << self
  end

  def mood
    @mood
  end

  def mood=(mood)
    @mood = mood
  end

  def name
    @name
  end

  def self.all
    @@all
  end


  # code goes here
end
