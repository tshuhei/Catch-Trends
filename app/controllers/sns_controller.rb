class SnsController < ApplicationController
    layout "sns"

    def twitter
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = "IVHaO5bj3TKqAql4szNVoHB1Y"
            config.consumer_secret     = "HC9THkphaR7LUs9LEPOLkshDYFh5TVBtO9RrPOTOSsAaUgM13C"
            config.access_token        = "1248129586904219649-HTFh4MNgQ9KxaZStbK8jNjFp8mTcWQ"
            config.access_token_secret = "NBCiMXhjb2yNhVuhU8KWvoGhMBPzVzos2l6Yd5Hkks0r3"
        end

        @tweets = client.search("lang:ja", result_type:"popular").take(20).collect

        @tweets_htmls = generateTwitterHTML(@tweets)
    end

    def twitter_search
    end

    def linkedin
    end

    def linkedin_search
    end

    def tiktok
    end

    def tiktok_search
    end

    def instagram
    end

    def instagram_search
    end

    private
    def generateTwitterHTML(tweets)
        tweets_htmls = Array.new
        tweets.each do |tweet|
            res = RestClient.get("https://publish.twitter.com/oembed", params: {url:tweet.uri})
            res = JSON.parse(res.body)
            tweets_htmls << res["html"]
        end
        return tweets_htmls
    end
end
