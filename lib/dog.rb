class Dog

  attr_accessor :owner

  def initialize (name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
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




  # code goes here
end
