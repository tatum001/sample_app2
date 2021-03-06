require 'spec_helper'

module RSpec
  module Mocks
    describe "a Mock expectation with multiple return values and no specified count" do
      before(:each) do
        @mock = RSpec::Mocks::Mock.new("mock")
        @return_values = ["1",2,Object.new]
        @mock.should_receive(:message).and_return(@return_values[0],@return_values[1],@return_values[2])
      end
      
      it "should return values in order to consecutive calls" do
        @mock.message.should == @return_values[0]
        @mock.message.should == @return_values[1]
        @mock.message.should == @return_values[2]
        @mock.rspec_verify
      end

      it "should complain when there are too few calls" do
        @mock.message.should == @return_values[0]
        @mock.message.should == @return_values[1]
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(any args)\n    expected: 3 times\n    received: 2 times|
        )
      end

      it "should complain when there are too many calls" do
        @mock.message.should == @return_values[0]
        @mock.message.should == @return_values[1]
        @mock.message.should == @return_values[2]
        @mock.message.should == @return_values[2]
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(any args)\n    expected: 3 times\n    received: 4 times|
        )
      end
    end

    describe "a Mock expectation with multiple return values with a specified count equal to the number of values" do
      before(:each) do
        @mock = RSpec::Mocks::Mock.new("mock")
        @return_values = ["1",2,Object.new]
        @mock.should_receive(:message).exactly(3).times.and_return(@return_values[0],@return_values[1],@return_values[2])
      end

      it "should return values in order to consecutive calls" do
        @mock.message.should == @return_values[0]
        @mock.message.should == @return_values[1]
        @mock.message.should == @return_values[2]
        @mock.rspec_verify
      end

      it "should complain when there are too few calls" do
        third = Object.new
        @mock.message.should == @return_values[0]
        @mock.message.should == @return_values[1]
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(any args)\n    expected: 3 times\n    received: 2 times|
        )
      end

      it "should complain when there are too many calls" do
        third = Object.new
        @mock.message.should == @return_values[0]
        @mock.message.should == @return_values[1]
        @mock.message.should == @return_values[2]
        @mock.message.should == @return_values[2]
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(any args)\n    expected: 3 times\n    received: 4 times|
        )
      end
    end

    describe "a Mock expectation with multiple return values specifying at_least less than the number of values" do
      before(:each) do
        @mock = RSpec::Mocks::Mock.new("mock")
        @mock.should_receive(:message).at_least(:twice).with(no_args).and_return(11, 22)
      end
      
      it "should use last return value for subsequent calls" do
        @mock.message.should equal(11)
        @mock.message.should equal(22)
        @mock.message.should equal(22)
        @mock.rspec_verify
      end

      it "should fail when called less than the specified number" do
        @mock.message.should equal(11)
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(no args)\n    expected: 2 times\n    received: 1 time|
        )
      end
    end

    describe "a Mock expectation with multiple return values with a specified count larger than the number of values" do
      before(:each) do
        @mock = RSpec::Mocks::Mock.new("mock")
        @mock.should_receive(:message).exactly(3).times.and_return(11, 22)
      end
      
      it "should use last return value for subsequent calls" do
        @mock.message.should equal(11)
        @mock.message.should equal(22)
        @mock.message.should equal(22)
        @mock.rspec_verify
      end

      it "should fail when called less than the specified number" do
        @mock.message.should equal(11)
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(any args)\n    expected: 3 times\n    received: 1 time|
        )
      end

      it "should fail when called greater than the specified number" do
        @mock.message.should equal(11)
        @mock.message.should equal(22)
        @mock.message.should equal(22)
        @mock.message.should equal(22)
        expect { @mock.rspec_verify }.to raise_error(
          RSpec::Mocks::MockExpectationError, 
          %Q|(Mock "mock").message(any args)\n    expected: 3 times\n    received: 4 times|
        )
      end
    end
  end
end

