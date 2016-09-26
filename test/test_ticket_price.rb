require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/ticket_price'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'price' do


  before do
    @child_price = 10
    @adult_price = 20
    @senior_price = 15
  end



  it 'should take an age as a named argument' do
    proc{ ticket_price() }.must_raise ArgumentError
    proc{ ticket_price(12) }.must_raise ArgumentError
  end

  it 'should return the correct price for children' do
    (0..17).each do |age|
      ticket_price(age: age).must_equal @child_price
    end
  end

  it 'should return the correct price for adults' do
    (18..64).each do |age|
      ticket_price(age: age).must_equal @adult_price
    end
  end

  it 'should return the correct price for seniors' do
    (65..120).each do |age|
      ticket_price(age: age).must_equal @senior_price
    end
  end

end