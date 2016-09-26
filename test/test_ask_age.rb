require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'  
  
require_relative '../lib/ticket_price'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'ask_age' do


  before do
    $stdout = StringIO.new
  end

  after(:all) do
    $stdout = STDOUT
  end

  it 'should ask for the age of the user' do
    self.expects(:puts).with('Please enter your age:')
    self.stubs(:gets)
    ask_age
  end

  it 'should allow the user to enter their age' do
    self.expects(:gets)
    ask_age
  end

  it 'should return the entered age as an integer' do
    self.stubs(:gets).returns("10\n")
    returned_age = ask_age
    returned_age.must_be_instance_of Fixnum
    returned_age.must_equal 10
  end
  

end