require_relative 'item.rb'

class DigitalItem < Item
  attr_accessor :type
  attr_reader :quantity

  def initialize(name, price, type)
    super(name, price)
    @type = type
  end

  def quantity
    super
    @quantity = 1
  end

  def sell(amount)
    super
    @quantity = 1
  end

  def stock(amount)
    super
    @quantity = 1
  end

end
