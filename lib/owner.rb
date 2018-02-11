class Owner
  attr_accessor :pets, :name

  @pets = {fishes: [], cats: [], dogs: []}
  @@all = []

  def initialize(name)
    # class method to initialize an owner
    @name = name
  end

  def class.all
  #keeps track of the owners that have been created
    @@all
  end

  def class.all_count
    owner = self.new(name)
    self.all << owner
    self.all.count
    #  unless self.owners.include?(owner)
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
