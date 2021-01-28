require 'Bojo_bikes'
describe Bike do
  
  it '.working? returns true' do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end
end