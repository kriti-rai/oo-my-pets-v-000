require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
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
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    binding.pry
    @pets[:dogs] << Dog.new(name)
  end
  # def walk_dogs(dog,name)
  #   dog = Dog.new(name)
  #   self.buy_dog(name)
  # 
  #   dog.mood = "happy"
  # end



end
