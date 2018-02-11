require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    self.all.size
    #  unless self.owners.include?(owner)
  end
  def self.reset_all
    @@all.clear
  end

  # #INSTANCE METHODS
  def initialize(species)
    @species = species
  end
  
  def say_species
    #can say its species
    @pets.keys
  end



end
