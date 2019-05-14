class Owner

  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat

  @@all = []
  @@pets = {:cats=>[], :dogs=>[], :fishes=>[]}

  def initialize(species)
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

end
