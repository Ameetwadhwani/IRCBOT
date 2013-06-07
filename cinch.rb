require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.freenode.org"
    c.channels = ["#bitmaker"]
    c.nick = "peekaboobot"
  end

  on :message.downcase, "hello" do |m|
    m.reply "Go home #{m.user.nick}"
  end
end

bot.start