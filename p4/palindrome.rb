class Palindrome

	# GREATER THAN 100 x 100
	# LESS THAN 999 x 999
	def temp
		@val = 902209

		@valArray = @val.to_s.split('')
		puts @val
		puts @val.to_s.length/2
		puts @valArray
		puts @valArray[@val.to_s.length/2]
	end

end
