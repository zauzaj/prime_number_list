require 'pry-rails'
module PrimeNumberGenerator
	
	def generate starting_value, ending_value
		primes_list = []
		input_order_changing(starting_value, ending_value).to_a.each do |value|
			primes_list << value if isPrime(value)
		end
		primes_list
	end


	def isPrime argument
		(2..(argument/2)).to_a.all? {|div| argument%div > 0}
	end

	def input_order_changing num1, num2
		num1 if num1 == num2
		num1 > num2 ? (num2..num1) : (num1..num2) 
	end
end