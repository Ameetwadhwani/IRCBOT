require 'socket'

server = "chat.freenode.net"
port = "6667"
nick = "peekaboobot"
channel = "#bitmaker"
greeting_prefix = "privmsg #bitmaker :"  # what does the : denote?  
greetings = ['Hello', 'Hi', 'Hola', 'Yo', 'Wazzup'] # these are the greetings the program is looking for

# opens a new port with the correct server and port 
s = TCPSocket.open(server, port)

# print ('addr : ', s.addr.join(":"), "\n")  -- > not sure what this is?
# print ('peer : ', s.peeraddr.join(":"), "\n") --- > revisit this 

s.puts "USER peekaboobot 0 * peekaboobot" # -- this is creating a new user - we're not sure what the syntax is. we do know that the server is going to output this string. 

s.puts "NICK #{nick}" # -- this is creating a nickname that is equal to our botname.
s.puts "JOIN #{channel}" # -- this is connecting us to the channel we defined above. 
s.puts "PRIVMSG #{channel} :Hello from peekaboobot" #  we think this is saying we're going to have a private message. We're not totally sure why hello starts with :Hello.  does the semi colon separate the message?  

until s.eof? do # until the server get to the end of file (EOF) - the ? denotes a boolean true or false.  
	msg = s.gets.chomp # variable msg (message) = an input from 'chat.freenode.net' 
	puts msg # output the message that was just captured. 

	wasGreeted = false #
	greetings.each do |g|  # for each instance of the variable greeting, do g where g is an element of greeting 
		wasGreeted = true if msg.eql? g 
	#end # ends each do 

	if msg.include?(greeting_prefix) && wasGreeted
		response = "BOO!"
		s.puts "PRIVMSG #{channel} :#{response}"  # output the response to the channel
	end
end




