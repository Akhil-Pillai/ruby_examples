def gold_room
	puts "This room has a lot of gold, tell me how much are you gonna take? *Psst take more than 100* "
	how_much = gets.chomp.to_i
	if how_much == 0 || how_much == 1 || how_much == nil || how_much =="Nothing" || how_much == "nothing"
		puts "Oh! yea right why not try again *ass*!"
		gold_room
	elsif how_much < 100
		puts <<-END
		Wow man you are not a greedy basket!
		END
		exit(0)
	else
		puts "Greedy hoe!"
		start
	end
end

def bear_room
	puts <<-START
		Welcome to the Bear Room, well not welcome really \'cause bears :p
		There is a door behind the bear, but the bear is sitting there with his pot of honey
		No wonder they are so fat
		Anyways, what do you do?
			1. I will snatch the honey
			2. I will smack the bear right across his face
			3. I will walk right to the door and kick the bear aside
			4. Fuck this I am leaving
		Enter wisely dear friend
	START
	bear_choice = gets.chomp.to_i
	if bear_choice == 1
		puts "You really did not think this through did you?\nWell the bear dipped you in the honey and ate you like nutella and stick.\nThank goodness you have unlimited lives"
		bear_room
	elsif bear_choice == 2
		puts "Really? You just got smacked back\nThere goes your head rolling away.\n"
		   bear_room
	elsif bear_choice == 3
		puts "Wow that worked! That bear started crying and ran off with his honey.\nGood going dummy.\nYou are being magically teleported into another room."
		gold_room
	elsif bear_choice == 4 
		start			
	else
		puts "Enter 1 or 2 or 3 or 4\nGod why is this moth** f*** using my program."
		bear_room
	end
end

def start 
		puts <<-START
		You are in a dark room, a very dark room
		Okay you got me just dark enough so that you can see 2 doors on either side
		(i.e that means left and right dumbass so when I ask you, just write left or right)
		Which door do you choose wildling/muggle/peasant ?
		START
		door_choice = gets.chomp
		if door_choice == 'left' || door_choice == 'Left' || door_choice == 'LEFT'
			wizard_room
		elsif door_choice == 'Right' || door_choice == 'right' || door_choice == 'RIGHT'
			bear_room
		else
			puts 'Type clearly dumbass'
			start
		end
end

start