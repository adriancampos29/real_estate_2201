require './lib/room'
require './lib/house'

RSpec.describe House do
  context "Iteration 2" do
    it "house price is 400000" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end
  end

  it "house address is 123 sugar lane" do
    house = House.new("$400000", "123 sugar lane")
    expect(house.address).to eq("123 sugar lane")
  end


  it "rooms is an empty array" do
    house = House.new("$400000", "123 sugar lane")
    expect(house.rooms).to eq([])
  end

  it "house has 2 rooms" do
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    house.add_room(room_2)
    expect(house.rooms).to eq([room_1, room_2])
  end

end
