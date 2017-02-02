require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Trolls', 21.00, '200min', 'Mike Mitchell', 'Walt Dhorn')
  end

  # check initialization
describe 'Initialization' do
  # check that it is an instance of Bluray
  it 'should be a bluray' do
    expect(@bluray).to be_instance_of(Bluray)
  end

  # check that it is an extended from Item
  it 'should be an item' do
    expect(@bluray).to be_kind_of(Item)
  end
end

  # check getters and setters
describe 'getters and setters' do
  it 'is assigned a name' do
    expect(@bluray.name).to eq('Trolls')
  end

  it 'is assigned a price' do
    expect(@bluray.price).to eq(21.00)
  end

  it 'is assigned a run time' do
    expect(@bluray.run_time).to eq('200min')
  end

  it 'is assigned a director' do
    expect(@bluray.director).to eq('Mike Mitchell')
  end

  it 'is assigned a producer' do
    expect(@bluray.producer).to eq('Walt Dhorn')
  end
end
end
