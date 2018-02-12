require 'pry'
class Owner
  attr_accessor :pets, :name, :fishes, :cats, :dogs
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {@fishes: [], @cats: [], @dogs: []}
    @species = "human"
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
  # def species

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[@fishes] << Fish.new(name)
  end



end
