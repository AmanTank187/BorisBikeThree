require 'dockingstation'

describe DockingStation do
 let(:bike) {Bike.new}

  describe '#release_bike' do
    it {is_expected.to respond_to(:release_bike)}
    it 'It should show true' do
      expect(bike.working?).to eq true
    end
  end

  describe '#docking_bikes' do
    it 'should dock a bike' do
      expect(bike.docking_bikes).to eq true
    end
  end
end
