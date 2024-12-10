# frozen_string_literal: true

# calculator.rb
# A simple calculator app

class Calculator
    # Initializes the calculator
    def initialize
      @result = 0
    end
  
    # Adds a number to the result
    def add(number)
      @result += number
    end
  
    # Subtracts a number from the result
    def subtract(number)
      @result -= number
    end
  
    # TODO: Implement multiplication
    def multiply(number)
      # Multiply @result by the given number
    end
  
    # TODO: Implement division
    def divide(number)
      # Divide @result by the given number
      # Handle division by zero
    end
  
    # Resets the calculator
    def reset
      @result = 0
    end
  
    # Displays the current result
    def display_result
      puts "Current result: #{@result}"
    end
  
    # TODO: Add support for more operations (e.g., square root, exponentiation)
  end
  