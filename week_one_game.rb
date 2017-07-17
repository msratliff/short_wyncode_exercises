puts "Your plane has just crashed into the Caribbean, near a large island. As you swim ashore, you remember seeing a large building toward the center of the island. \nMaybe it has a satellite phone or... wifi?"

print "What is your name? "
user_name = gets.chomp.downcase

puts "Great. How are you feeling after a plane crash and swimming to shore, #{user_name.capitalize}? (Great, Good, Okay, Bad, or Tired)  "

feeling = gets.chomp.downcase

system 'clear'

case feeling
	when "great"
		health = 150
		puts "Ok, your starting health is #{health}."
	when "good"
		health = 100
		puts "Ok, your starting health is #{health}."
	when "okay", "ok"
		health = 75
		puts "Ok, your starting health is #{health}."
	when "bad"
		health = 50
		puts "Ok, your starting health is #{health}."
	when "tired"
		health = 65
		puts "Ok, your starting health is #{health}."
	else
		health = 48
		puts "Wasn't really an option... you must be concussed. Your starting health is #{health}."
	end

puts "After starting a signal fire, spelling out \"HELP ME\" with rocks and logs on the beach, and trying all other means of getting rescued, you begin your long trek toward the building at the center of the island."

enemy_defeated = 0

##loop to count enemies battled
while enemy_defeated < 3
	target = ["bear","parrot","box turtle","chipmunk"].shuffle
	enemy_health = rand(44)+1
	puts "\nYou come across a #{target[0]} with #{enemy_health} health. It's ferocious and begins to attack. Do you RUN away, PUNCH it, or BANDAGE yourself? "
	response = gets.chomp.downcase

	
	## battle loop
	while enemy_health > 0
		
		if response == "punch" 
			rand_injury = rand(14)+1
			rand_hit = rand(19)+1
			health -= rand_injury
			enemy_health -= rand_hit
			
			if health <=0
				system 'clear'
				abort "#{target[0].capitalize} bites at your leg. You sustain #{rand_injury} damage and have died."
			else
				if enemy_health <= 0
					puts "You've smote the #{target[0]}, dealing #{rand_hit} damage, but not before it bit you for #{rand_injury}. You're left with #{health} and keep walking toward the center of the island.\n"
					enemy_defeated +=1
					break
				else 
					puts "You swing wildly at the #{target[0]}, landing a vicious blow and deal #{rand_hit} damage! The #{target[0]} has #{enemy_health} health left." 
					puts "#{target[0].capitalize} bites at your leg. You sustain #{rand_injury} damage. You have #{health} health left.\n"
				end
			end
		
		elsif response == "bandage" 
			rand_injury = rand(14)+1
			rand_heal = rand(9)+1
			health += (rand_heal - rand_injury)
						
			if health <=0
				abort "Your attempts to bandage your injuries have fallen short. The #{target[0]} bites at your leg and you sustain #{rand_injury} damage and have died."
				break
			else
				puts "You tear off a piece of your shirt and wrap your open wound, healing yourself for #{rand_heal}. The #{target[0]} is undeterred by your first aid skills and bites you anyway, dealing #{rand_injury}. You have #{health} health left.\n" 
			end
					
		elsif response == "run" 
			puts "You manage to escape, barely.\n" 
			break
		else
			puts "That didn't work! Now what? (Punch, Bandage, Run) "
			response = gets.chomp.downcase
		end

		puts "It's still coming! Now what? (Punch, Bandage, Run) "	
		response = gets.chomp.downcase
	
	end


end

puts "Finally, after several grapples with the local fauna, you've reached the center of the island."
puts "You push open the giant double doors of the massive building, walk through the lobby, overgrown with ferns and jungle vines. "
sleep(1)
puts "You wander deeper into the building, along hallways and through corridors. Finally, you stumble upon an old control room. There are several computers on desks around the room. You locate a phone sitting on a desk to the left."
sleep(2)
puts "Then you get ambushed by a pack of Velociraptors and get eaten.\n"
puts "Welcome To Jurassic Park!"