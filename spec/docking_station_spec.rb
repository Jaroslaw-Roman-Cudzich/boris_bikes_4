require './lib/docking_station'
require './lib/bike'
describe DockingStation do 
  describe "#dock_bike" do
    it "responds to docking a bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock_bike)
    end
    it "responds to a docking with one argument" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock_bike)
    end  
    # it "responds to the passing of a new bike into method dock_bike" do
    #   docking_station = DockingStation.new
    #   bike = Bike.new
    #   expect(docking_station.dock_bike(bike)).to eq bike
    # end
  end

  describe "#release_bike" do

    it "responds to release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
    end
    # it "responds to release_bike with a working? bike" do
    #   docking_station = DockingStation.new
    #   bike = docking_station.release_bike
    #   expect(bike).to respond_to(:working?)
    # end
    
    #it "responds to see if a bike has been docked - ie if there are bikes docked" do
    #end  
    
    
    # it "responds to checking that a bike has been docked" do
    #   docking_station = DockingStation.new
    #   docking_station.dock_bike(Bike)
    #   expect (:dock_bikes.length > 0 == true)
    # end
    it "responds to checking that the docking station is empty when releasing a bike.  If so then an error is raised" do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_error("The docking station is empty.")
      # expect {:dock_bikes.length == 0}.to raise_error("The docking station is empty.")
    end
  end
end
