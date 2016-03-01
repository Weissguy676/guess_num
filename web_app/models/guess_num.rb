class Turn
	def newturn()
		@cpunumber = rand(10)
		prompt()
	end

	def self.cpunumber
		@cpunumber = rand(10)
	end

	def prompt()
		puts "Guess a number: "
		number = gets.chomp
		number = number.to_i
		if number > @cpunumber
			puts "You guessed high."
			prompt()
		elsif number < @cpunumber
			puts "You guessed low."
			prompt()
		else
			puts "You win!"
		end
	end
end

# turn1 = Turn.new

# turn1.newturn()

