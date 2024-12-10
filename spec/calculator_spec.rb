# spec/calculator_spec.rb
require_relative '../calculator'

RSpec.describe Calculator do
  before(:each) do
    @calculator = Calculator.new
  end

  describe '#add' do
    it 'adds a number to the current result' do
      @calculator.add(5)
      expect(@calculator.instance_variable_get(:@result)).to eq(5)
    end
  end

  describe '#subtract' do
    it 'subtracts a number from the current result' do
      @calculator.add(10)
      @calculator.subtract(3)
      expect(@calculator.instance_variable_get(:@result)).to eq(7)
    end
  end

  describe '#reset' do
    it 'resets the result to 0' do
      @calculator.add(100)
      @calculator.reset
      expect(@calculator.instance_variable_get(:@result)).to eq(0)
    end
  end

  describe '#multiply' do
    it 'multiplies the current result by the given number' do
      @calculator.add(3)
      @calculator.multiply(4)
      expect(@calculator.instance_variable_get(:@result)).to eq(12)
    end
  end

  describe '#divide' do
    it 'divides the current result by the given number' do
      @calculator.add(10)
      @calculator.divide(2)
      expect(@calculator.instance_variable_get(:@result)).to eq(5)
    end

    it 'raises an error if dividing by 0' do
      @calculator.add(10)
      expect { @calculator.divide(0) }.to raise_error(ZeroDivisionError)
    end
  end
end
