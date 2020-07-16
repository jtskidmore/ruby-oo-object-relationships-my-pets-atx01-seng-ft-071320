class Cat

  attr_reader :name

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

  def owner
    @owner
  end

  def owner=(owner)
    @owner = owner
  end


  def self.all
    @@all
  end

  # code goes here
end
