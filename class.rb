class Pet
	def set_woof(woof)
		@woof = woof
	end

	def speak
		puts "#{@woof} #{@woof}"
	end
end

class Person
	def set_identity(name, job)
		@name = name
		@job = job
	end

	def identity
		puts "Hi my name is #{@name} and I work as a #{@job}"
	end
end


# Convert the following methods to use the send method
5.send(:*, 5) 	# 5 * 5
"omg".send(:upcase) 	# "omg".upcase
['a', 'b', 'c'].send(:at, 1) 	# ['a', 'b', 'c'].at(1)
['a', 'b', 'c'].send(:insert, 2, 'o', 'h', 'n', 'o') # ['a', 'b', 'c'].insert(2, 'o', 'h', 'n', 'o')
{}.send(:size) # {}.size
{character: "Mario"}.send(:has_key?, :character)	# {character: "Mario"}.has_key?(:character)

# Convert the following methods to not use the send method
6 - 32
{html: true, json: false}.keys
"MakerSquare" * 6
"MakerSquare".split('a')
array = ['alpha', 'beta']
array[3]
