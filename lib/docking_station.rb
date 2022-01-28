class DockingStation
  attr_reader :dock_bikes
  def initialize
    @dock_bikes = []
  end

  def release_bike
    if empty?
      raise "The docking station is empty."
    end
    bike = Bike.new
  end
  
  def dock_bike(bike)
    @dock_bikes << bike
  end

  def empty?
    @dock_bikes.length == 0
  end


  # @dock_bike
  # def dock_bike_num
  #   @dock_bikes.length
  # end
end