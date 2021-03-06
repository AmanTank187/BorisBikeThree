require 'dockingstation'

describe DockingStation do
 let(:bike) {Bike.new}

  describe '#release_bike' do
    it {is_expected.to respond_to(:release_bike)}
    it 'It should show true' do
      expect(bike.working?).to eq true
    end

    it 'raises error when no bikes available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it {is_expected.to respond_to(:bikes)}

  it "Docks the bike" do
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'returns docked bikes' do
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  describe '#dock(bike)' do
    it 'raises error when docking station is full' do
      subject.capacity.times{subject.dock (Bike.new)}
      expect { subject.dock(Bike.new) }.to raise_error "Docking station is full"
    end


  end

  it 'Allows a user to set a capacity instance variable when dockingstation class is called' do
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  it 'has a defualt capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end
