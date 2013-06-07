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

Twitter.configure do |config|
  config.consumer_key = 7xKxgdC3pHcpHNyAV3BJg
  config.consumer_secret = rwKC1IIM0t5xqKqZd41YVdwKmnV7tL2yQ70z3J8ugSc
  config.oauth_token = 1491301814-53EGuYCKdNMpvt7BgoqDLZILfLN1aDsBKXZ4Tbv
  config.oauth_token_secret = 1vDjxwgKNHNs988emcz9E3AYaH1YLEqzJb2avkb3I
end

bot.start