require 'socket'

server = "chat.freenode.net"
port = "6667"
nick = "peekaboobot"
channel = "#bitmaker"
greeting_prefix = "PRIVMSG #{channel} :"  # what does the : denote?  
greetings = ["Hello", "Hi", "Hola", "Yo", "Wazzup"] # these are the greetings the program is looking for

# opens a new port with the correct server and port 
s = TCPSocket.open(server, port)

# print ('addr : ', s.addr.join(":"), "\n")  -- > not sure what this is?
# print ('peer : ', s.peeraddr.join(":"), "\n") --- > revisit this 

s.puts "USER peekaboobot 0 * peekaboobot" # -- this is creating a new user - we're not sure what the syntax is. we do know that the server is going to output this string. 

s.puts "NICK #{nick}" # -- this is creating a nickname that is equal to our botname.
s.puts "JOIN #{channel}" # -- this is connecting us to the channel we defined above. 
# s.puts "PRIVMSG #{channel} :we see you" #  we think this is saying we're going to have a private message. We're not totally sure why hello starts with :Hello.  does the semi colon separate the message?  
s.puts greeting_prefix + 'we see you'

s.puts greeting_prefix + "...and we're coming for you"

i = 0
until s.eof?
	puts "inside until loop...."
	msg = s.gets.chomp.downcase
	puts msg

	i = i + 1

	if i == 1
		puts "inside s.eof"
		s.puts "artbot sucks - deal with it"
	end
end


# def say_something(tcpsocket, message)
# 	greetings_prefix + message
# end

# until s.eof? do # until the server get to the end of file (EOF) - the ? denotes a boolean  
# 	msg = s.gets.chomp.downcase # variable msg (message) = an input from 'chat.freenode.net' 
# 	puts msg # output the message that was just captured. 

# 	was_greeted = false
# 	greetings.each do |g|  # for each instance of the variable greeting, do g where g is an element of greeting 
# 		was_greeted = true if msg.include? g 
# 	end
# 		# was_greeted = greetings.include? msg

# 	if msg.include? greeting_prefix && was_greeted
# 			response = "BOO!BOO!BOO!BOO!BOO!BOO!BOO!"

# 			# say_something( s, "this is the actual message i want to send")

# 			s.puts greeting_prefix + "#{response}"  # output the response to the channel
# 	end 	
# end
