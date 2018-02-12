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
    # binding.pry
    @pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    # binding.pry
    @pets.each do |type,pet| @pets.clear
      pet.collect do |p| p.mood = "nervous"
      end
    end
  end

  def list_all
    @pets.each do |type, pets|
      if type == :fish
        fish_count = pets.count
        puts "#{fish_count}"
        @binding.pry
      else
        "xyz"
      # elsif type == :cats
      #   cats_count = pets.count
      # elsif type == :dogs
      #   dogs_count = pets.count
      # end
      #   puts "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
      end
      # puts "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
    end
  end


end
