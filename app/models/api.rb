require 'httparty'

class Api
	include HTTParty

	def initialize
		api_key = ENV['SECRET_TOKEN']
		api_url = "http://api.shopstyle.com/api/v2/products/435600240?pid=#{api_key}"
		@response = HTTParty.get(api_url)
	end

	def women_formal_image
		@response["image"]["sizes"]["Large"]["url"] 
	end

	def women_formal_name
		@response["name"] 
	end

	def women_formal_price
		@response["priceLabel"]
	end

	def women_url
		@response["pageUrl"]
	end
end


