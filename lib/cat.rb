class Cat

  attr_reader :name
  attr_accessor :owner, :mood

  def initialize (name, owner)
    @name = name
    @owner = owner
  end

  def name
    @name
  end

  def owner
    @owner
  end
  # code goes here
end
