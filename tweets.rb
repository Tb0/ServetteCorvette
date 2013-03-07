require 'twitter'
require 'active_support/all'

#TWITTER CONSTANTS
TWITTER_CONSUMER_KEY       = 
TWITTER_CONSUMER_SECRET    = 
TWITTER_OAUTH_TOKEN        = 
TWITTER_OAUTH_TOKEN_SECRET = 
#

Twitter.configure do |config|
	config.consumer_key       = TWITTER_CONSUMER_KEY
	config.consumer_secret    = TWITTER_CONSUMER_SECRET
	config.oauth_token        = TWITTER_OAUTH_TOKEN
	config.oauth_token_secret = TWITTER_OAUTH_TOKEN_SECRET
end

ten_minutes_ago = 10.minutes.ago

Twitter.search('').results.map do |status|
	if (status.created_at >= ten_minutes_ago)
 		puts	"#{status.from_user}: #{status.text} #{status.created_at}"
 	end
end
