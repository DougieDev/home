class Building
  attr_reader :units, 
              :renters,
              :rented_units
  
  def initialize
    @units = []
    # @renters = []
    # @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    renters = []
    @units.each do |unit|
      renters << unit.renter.name
    end
    renters
  end

  def average_rent
    sum = 0.0
    @units.each do |unit|
      sum += unit.monthly_rent
    end
    answer = sum / @units.count
  end

  def rented_units
    units.find_all do |unit|
      unit.renter != nil
    end
  end
  
end