class Owner
  attr_accessor :pets, :name

  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []

  def initialize(name)
    # class method to initialize an owner
    @name = name
  end

  def self.all
  #keeps track of the owners that have been created
    owner = self.new(name)
    @@all << o
  end

  def self.all_count
    owner = self.new(name)
    self.all << owner
    self.all.count
    #  unless self.owners.include?(owner)
  end
  def self.reset_all
    self.all.clear
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
