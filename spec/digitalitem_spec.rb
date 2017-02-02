require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    @digital_item = DigitalItem.new('Heaven Knows', 0.99, 'audio track')
  end

  describe 'Initialization' do
    it 'should be a digital item' do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end

    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end
  end

  describe 'Getters and Setters' do
    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Heaven Knows')
    end

    it 'is assinged a price' do
      expect(@digital_item.price).to eq(0.99)
    end

    it 'is assigned a type' do
      expect(@digital_item.type).to eq('audio track')

    end
  end
  describe 'Methods' do
    it 'quanitity is 1' do
      expect(@digital_item.quantity).to eq(1)
    end

    it 'quantity does not increase on stock' do
       @digital_item.stock(2)
      expect(@digital_item.quantity).to eq(1)
    end

    it 'quantity does not decrease when sold' do
      @digital_item.sell(2)
      expect(@digital_item.quantity).to eq(1)
    end

  end
end
