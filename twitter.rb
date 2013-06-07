require 'twitter'
Twitter.configure do |config|
  config.consumer_key = 'gYaFjpHlq0hBaeALWxifQ'
  config.consumer_secret = '0ehCUKjdsPx2EKyDGtTDMezX370IbWn4s1jbEfA0Hs'	
  config.oauth_token = '1491301814-iVUWUMdwQAsRBWfuf3LKTB6iyCFAeyV2XDJbi5K'
  config.oauth_token_secret = 'AZcp52xqXNYUMydamnj0qQOn12lUdHJKsXWZplgDsU'
end

Twitter.update("I'm telling on you!")