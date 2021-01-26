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

  
end