class RaceCar
	def set_speed
		r = Random.new
		speed = r.rand(60..80)
	end
end

class RaceTrack
	def start_race(*cars)
		@distance = 0
		@hour = 0

		@all_cars = Hash.new

		cars.each do |car|
			@all_cars[car] = car.set_speed
		end

		@all_cars.each { |x, y| puts "#{x} has entered the race. Speed: #{y}" }
	end

	def fast_forward
		@hour += 1
		if @hour < 6
			@all_cars.each do |x, y|
				@speed = y
				@distance = @speed * @hour
				puts "#{x} has traveled #{@distance} miles at a speed of #{@speed} miles per hour for #{@hour} hours!"
			end

			@all_cars.each do |x, y| 
				t = Random.new
				y += t.rand(0..20)
				@all_cars[x] = y
			end
		else
			@all_cars.each do |x, y|
				@max = 0
				if y > @max 
					@max = y
					@max_car = x
				end	
			end	
			puts "Winner is: #{@max_car} with a distance of #{@max} miles!"
			@speed = 0
		end
	end
end

