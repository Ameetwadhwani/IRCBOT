require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.freenode.org"
    c.channels = ["#bitmaker"]
    c.nick = "peekaboobot"
  end

  on :message, "hello" do |m|
    m.reply "#{m.user.nick}, your mom is looking for you."
  end
end


bot.start