require 'Bojo_bikes'
describe Bike do
  
  it 'responds to working?' do
    bike = Bike.new
    expect(bike.working?).to respond_to()
  end

  # it 'docks at a station' do
  #   bike = Bike.new
  #   dock = DockingStation.new
  #   expect(bike.dock_bike).to respond_to()
  # end
end