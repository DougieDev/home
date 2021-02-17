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

  def average_rent
    sum = 0.0
    @units.each do |unit|
      sum += unit.monthly_rent
    end
    answer = sum / @units.count
  end

end