require 'Bojo_docking'

describe DockingStation do

  it 'responds to release_bike' do
    dock = DockingStation.new
    expect(dock.release_bike).to respond_to()
  end

  it 'gets a bike and describes it to be working' do 
    dock = DockingStation.new 
    bike = dock.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'is able to dock a bike' do
    dock = DockingStation.new 
    bike = Bike.new
    expect(dock.dock_bike(bike)).to respond_to()
  end

  it 'responds to bike method' do
    dock = DockingStation.new
    expect(dock.bike).to respond_to()
  end

  it 'dock a bike returns bike' do
    bike = Bike.new
    dock = DockingStation.new
    expect(dock.dock_bike(bike)).to eq bike
  end

  it 'returns bike object' do
    bike = Bike.new
    dock = DockingStation.new
    dock.dock_bike(bike)
    expect(dock.bike).to eq bike
  end

end