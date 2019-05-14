class Owner

  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat

  @@all = []
  

  def initialize(species)
    @species = species
    @name = name
    @@pets = {:cats=>[], :dogs=>[], :fishes=>[]}
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

  def pets
    @@pets
  end

  def buy_fish(fish)
    @@pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @@pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @@pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end
end
