require 'Bojo_bikes'
describe Bike do
  
  it 'responds to working?' do
    bike = Bike.new
    expect(bike.working?).to respond_to()
  end
end