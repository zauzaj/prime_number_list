require_relative '../lib/concern/prime_number_generator'
class PrimeNumber
	include PrimeNumberGenerator
	
	attr_accessor :from, :to
	
	def initialize starting_value, ending_value
		begin
			from = Integer(starting_value)
			to = Integer(ending_value)
		rescue
			raise "Argument error"
		end
		@from, @to = from, to
	end

	def run
		generate(@from, @to)
	end

end