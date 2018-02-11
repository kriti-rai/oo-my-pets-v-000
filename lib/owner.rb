require 'pry'
class Owner
  attr_accessor :pets, :name

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
  #
  # #INSTANCE METHODS
  # def species(species)
  #
  # end
  #
  # def say_species
  #   #can say its species
  # end



end
