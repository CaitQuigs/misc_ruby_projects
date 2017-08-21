# Ruby Homework 4 - Gym
=begin
A gym has hired you to solve a problem. Most of their clients are fairly new to weightlifting and don’t know what to put on the barbell for a particular weight. The weights they have made available are in 45, 35, 25, 15, 10 and 5 lbs. increments. Build them a Ruby application that will tell them, for a given weight, what plates to put on each side of the bar. Bear in mind that the bar itself weighs 45 lbs.

For example, if they want to load 225 lbs. on the bar, they will need to put two 45 lbs. plates on each side of the bar. 45x4 = 180 lbs. Plus 45 lbs. for the barbell itself equals a total of 225 lbs. 

Hint: You don't really need to create Objects for this one, so you get a break from that. But you will need to create methods!
=end

def main_menu
	puts "Welcome to Weightlifting Help! Please let me know how much weight you would like to lift."
	@total = gets.chomp.to_i
	if @total == 45
		puts "The bar weighs 45 lbs, so no additional plates are needed."
	elsif @total < 45
		puts "Please enter at least 45 lbs, as the bar weighs 45 lbs. Please try again."
		main_menu
	else
		det_weights(@total)
		restart_menu
	end
end

def det_weights(weight)
	@plates = weight - 45
	#method for 45
	lb_45(@plates)
	#method for 35
	lb_35(@plates)
	#method for 25
	lb_25(@plates)
	#method for 15
	lb_15(@plates)
	#method for 10
	lb_10(@plates)
	#method for 5
	lb_05(@plates)
	#method for reporting.
	report(@num_45, @num_35, @num_25, @num_15, @num_10, @num_05, @plates)
end

def lb_45(weight)
	if weight < 90
		@num_45 = 0
	elsif weight%90 == 0
		@num_45 = weight / 90
		@plates = 0
	else 
		@num_45 = weight / 90
		@plates = weight%90
	end
end

def lb_35(weight)
	if weight < 70
		@num_35 = 0
	elsif weight%70 == 0
		@num_35 = weight / 70
		@plates = 0
	else 
		@num_35 = weight / 70
		@plates = weight%70
	end
end

def lb_25(weight)
	if weight < 50
		@num_25 = 0
	elsif weight%50 == 0
		@num_25 = weight / 50
		@plates = 0
	else 
		@num_25 = weight / 50
		@plates = weight%50
	end
end	

def lb_15(weight)
		if weight < 30
		@num_15 = 0
	elsif weight%30 == 0
		@num_15 = weight / 30
		@plates = 0
	else 
		@num_15 = weight / 30
		@plates = weight%30
	end
end

def lb_10(weight)
	if weight < 70
		@num_10 = 0
	elsif weight%20 == 0
		@num_10 = weight / 20
		@plates = 0
	else 
		@num_10 = weight / 20
		@plates = weight%20
	end
end

def lb_05(weight)
	if weight < 10
		@num_05 = 0
	elsif weight%10 == 0
		@num_05 = weight / 10
		@plates = 0
	else 
		@num_05 = weight / 10
		@plates = weight%10
	end
end

def report(num_45, num_35, num_25, num_15, num_10, num_05, plates)
	if num_45 > 1
		puts "You need (#{num_45}) 45 lb plates on each side of the bar."
	elsif num_45 > 0
		puts "You need (#{num_45}) 45 lb plate on each side of the bar."
	end
	
	if num_35 > 1
		puts "You need (#{num_35}) 35 lb plates on each side of the bar."
	elsif num_35 > 0
		puts "You need (#{num_35}) 35 lb plate on each side of the bar."
	end
	
	if num_25 > 1
		puts "You need (#{num_25}) 25 lb plates on each side of the bar."
	elsif num_25 > 0
		puts "You need (#{num_25}) 25 lb plate on each side of the bar."
	end
	
	if num_15 > 1
		puts "You need (#{num_15}) 15 lb plates on each side of the bar."
	elsif num_15 > 0
		puts "You need (#{num_15}) 15 lb plate on each side of the bar."
	end
	
	if num_10 > 1
		puts "You need (#{num_10}) 10 lb plates on each side of the bar."
	elsif num_10 > 0
		puts "You need (#{num_10}) 10 lb plate on each side of the bar."
	end
	
	if num_05 > 1
		puts "You need (#{num_05}) 5 lb plates on each side of the bar."
	elsif num_05 > 0
		puts "You need (#{num_05}) 5 lb plate on each side of the bar."
	end
	
	if plates > 0
		puts "This configuration will leave you with #{plates} lbs of weight left until your goal."
	end
end

def restart_menu
	puts "Would you like to enter another weight? (Y/n)"
	response = gets.chomp.downcase
	if response == "y"
		main_menu
	elsif response == "n"
		puts "Thank you for using Weightlifting help!"
	else
		puts "Please enter y or n"
		restart_menu
	end
end

# Main Program
Gem.win_platform? ? (system "cls") : (system "clear")
total = 0
main_menu