class PrimeFactors

	def initialize
		#@givenValue = 600851475143 
		@x					= 0
	end

	def findPrime(value)
		@x+=1
		
		#Take the modulus to determine if there is a remainder
		remainderCheck = value % @x
		
		#Base Case
		#If the number being searched is equal to the index value then
		#there can no longer be any factors and therefore the current index
		#must be the highest prime factor
		if value == @x
			return @x

		#General Case
		#If the current value is divisible by the index without remainders then it is a prime factor
		#Make recursive call with the value divided by the index as it is a prime factor
		#This will reduce runtime significantly as on each found prime factor the number being searched
		#will get smaller until the base case is reached
		elsif remainderCheck == 0
			return findPrime(value/@x)

		#Other Case
		#If the index is not a prime factor of the searched value then run the function again and increment
		#the index value
		else
			return findPrime(value)
		end
			
	end
	
end
 
