require 'httparty'

class Api
	include HTTParty

	def self.response
		api_key = ENV['SECRET_TOKEN']
		api_url = "http://api.shopstyle.com/api/v2/products/435600240?pid=#{api_key}"
		HTTParty.get(api_url)
	end
end


