class Owner
  attr_accessor :pets
  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []

  ###CLASS METHODS

  def class.all
  #keeps track of the owners that have been created
    @@all
  end

  def class.owners_count
    owner = self.new
    self.all << owner
    #  unless self.owners.include?(owner)
  end
  # def initialize(name)
    #class method to initialize an owner
  #   @name = name
  # end
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
