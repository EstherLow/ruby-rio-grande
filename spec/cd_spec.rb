require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Beatles', 21.00, 11, 'Beatles', '50min')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a book' do
    expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Beatles')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(21.00)
    end

    it 'is assigned the number of tracks' do
      expect(@cd.tracks).to eq(11)
    end

    it 'is assigned the artist' do
      expect(@cd.artist).to eq('Beatles')
    end

    it 'is assigned a run time' do
      expect(@cd.run_time).to eq('50min')
    end
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
  end
end
