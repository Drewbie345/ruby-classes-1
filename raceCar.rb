class RaceCar
	def set_speed
		r = Random.new
		r.rand(60..80)
	end
end

class RaceTrack
	def start_race(*cars)
		@car_array = *cars
		@speeds = []
		@hour = 0
		@distance = 0
		@num = 0

		@car_array.each do |car|
			@speeds << car.set_speed
		end
		
		@speeds.each do |speed|
			puts "#{@car_array[@num]} has entered the race and is going #{speed}"
			@num += 1
		end
	end

	def fast_forward
		

		if @hour < 4
			@num = 0	
			@hour += 1
			@distances = []

			@speeds.each do |speed|
				@distance = speed * @hour
				@distances << @distance
				puts "#{@car_array[@num]} has gone #{@distance} miles at a speed of #{speed} miles per hour for #{@hour} hours!"
				@num += 1
			end

			@speeds.collect! do |speed|
				s = Random.new
				speed += s.rand(0..20)
			end
		else
			number = 2
			@max = @distance
			@distances.each do |x|
				if x > @max
					@max = x
				end
				@num = 1
			end
			puts "The winner is: #{@car_array[number]} with a distance of #{@max}!"
		end
	end
end
