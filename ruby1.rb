def start
	level = 1
	puts "\n\n"
	puts "You're in a room and you find a die on the floor \nAn ominous voice from an unknown location speaks" 
	puts "\nRoll the dice or face immediate demise!"
	puts "\nWould you like to roll the dice?! "
	input = gets.chomp

	

	if input === "yes"
        while level === 1 do 
        n = rand(1..6).to_i
        d = rand(1..6).to_i
        puts "-------------------------------------------------------------"
        print "All you can hear is the bouncing of the die and your \nfait waits in the balance"
		print "\nYou rolled a #{n} and the magic number was #{d} \n"
		
		lives = 3
		# n = 3
		# d = 1
		# puts n
		# puts d
			if d === n 

			# || d === n + 1 || d === n - 1
		 		puts "Your lucky day #{d} " # --> d = n
			    puts "you get an extra life"
				
				lives += 1
				level = 2

			elsif n === d + 1 || n === d - 1 || n === d + 2 || n === d - 2
				puts "----------------------------------------------------------------\n"
				puts "So close the  voice feels bad for you and lets you live"
				level = 2   
				
			else
				puts "the number you rolled angers the voice and darkness consumes your soul"
				level = 0
				puts "Would you like to play again?\n"
				input = gets.chomp
				if  input === "yes"
					start
				else
					exit
				end
			end	


				puts "The voice calls you hither and as you walk forward you pass \n through a portal. The voice speaks. \n :If you can know my mind I will set you free."
				
				while level === 2 do
					if lives === 0
						puts "Game Over"
						break;
					end
				
				puts "you have #{lives} live(s)."
				puts "The voice asks you what number he is thinking of from 1 - 10"
				n = gets.chomp.to_i
				d = rand(1..10)	
				

					if d === n
						puts "Congratulations! You win the game! You are a supieror guesser! You escape with your life and many riches"
						level = 0
						exit
					elsif n === d + 1 || n === d-1
						puts "Your guess distracted the voice long enough for you to escape with your life. He curses your name and your prosterity as you run far away"
						level = 0
						exit
					elsif n < 1 || n > 10
						puts "#{n} isn't between 1 and 10.  For not following orders \n I thrust you into the depths of hell and take\n all your lives!!"
						level = 2
						lives = 0
					elsif n === d + 2 || n === d - 2
						puts "Your guess close enough. You live for the moment."
						leve = 2

					else 
						puts "You were way off, the number was #{d}."
						puts "I must feed off the flesh of one of your live(s)."
						lives -= 1
					end

				end

			
			
		
		end
			
	else
		puts "------------------------------------------------------------"
		puts "\nOmnivorous rats flood the room and leave your bones bare"
		puts "Game Over"
		puts "Would you like to play again?\n"
		input = gets.chomp
		if  input === "yes"
			start
		else
			exit
		end
	end
	
end


start
