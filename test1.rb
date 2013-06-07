


until msg == "yo" do # until the server get to the end of file (EOF) - the ? denotes a boolean true or false.  
	puts "Enter a message: "
	msg = gets.chomp # variable msg (message) = an input from 'chat.freenode.net' 
	puts msg # output the message that was just captured. 

	wasGreeted = false #
	greetings.each do |g|  # for each instance of the variable greeting, do g where g is an element of greeting 
	wasGreeted = true if msg.include? g 
	end # ends each do 

	if msg.include? greeting_prefix and wasGreeted #why 'and' instead of && ? 
		response = "BOO!"
		puts "#{response}"  # output the response to the channel
	end
end
