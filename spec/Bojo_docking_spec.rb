require 'Bojo_docking'

describe DockingStation do
  
  describe '#release_bike' do
    
    it 'responds to release_bike' do
      dock = DockingStation.new
      bike = Bike.new
      dock.dock_bike(bike)
      expect(dock.release_bike).to respond_to()
    end

    it 'checking if .release_bike returns stored bike' do
      bike = Bike.new
      dock = DockingStation.new
      dock.dock_bike(bike)
      expect(dock.release_bike).to eq bike
    end

    it 'raises an error calling .release_bike when there are no bikes available' do
      dock = DockingStation.new
      expect {dock.release_bike}.to raise_error 'No bikes available'
    end

  

  end
  

  describe '#dock_bike' do
    it 'is able to dock a bike' do
      dock = DockingStation.new 
      bike = Bike.new
      expect(dock.dock_bike(bike)).to respond_to()
    end

    it 'dock a bike returns bike' do
      bike = Bike.new
      dock = DockingStation.new
      expect(dock.dock_bike(bike)).to eq bike
   end
  end

  describe '#bike' do
    it 'responds to bike method' do
      dock = DockingStation.new
      expect(dock.bike).to respond_to()
    end
  
    it 'returns the bike object we know is in station' do
      bike = Bike.new
      dock = DockingStation.new
      dock.dock_bike(bike)
      expect(dock.bike).to eq bike
    end
    
  end

  it 'gets a bike and describes it to be working' do 
    dock = DockingStation.new 
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

end