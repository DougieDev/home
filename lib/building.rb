class Building
  attr_reader :units, 
              :renters
  
  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @units.map do |unit|
      @renters << unit.renter.name
    end
    @renters
  end
end