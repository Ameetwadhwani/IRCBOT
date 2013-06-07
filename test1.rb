greeting_prefix = "privmsg #bitmaker :"  # what does the : denote?  
greetings = ['Hello', 'Hi', 'Hola', 'Yo', 'Wazzup'] # these are the greetings the program is looking for


def testa 

	until msg == "stop" do # until the server get to the end of file (EOF) - the ? denotes a boolean true or false.  
		msg = gets.chomp # variable msg (message) = an input from 'chat.freenode.net' 
		puts msg # output the message that was just captured. 

		wasGreeted = false #
		greetings.each do |g|  # for each instance of the variable greeting, do g where g is an element of greeting 
			wasGreeted = true if msg.eql? g 
		end # ends each do 

		if msg.include?(greeting_prefix) && wasGreeted
			response = "BOO!"
			puts "PRIVMSG #{channel} :#{response}"  # output the response to the channel
		end
	end

end 


puts "Give me a command: "
msg = gets.chomp
testa 

