class Car
	def initialize
		@fuel = 10
		@distance = 0
	end

	def drive(miles)
		@miles = miles

		@fuel -= @miles / 20.0
			
		@fuel > 0 ? @distance += @miles : "Out of Gas! Fuel Up!"		
	end

	def fuel_up
		full_tank = 10.0
		needed_gas = full_tank - @fuel
		cost = needed_gas * 3.50
		puts "You need #{needed_gas} gallons of gas and it will cost: $#{cost}."
	end
	
	def get_info
		"I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end
end
