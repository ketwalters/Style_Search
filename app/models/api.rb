require 'httparty'

class Api
	include HTTParty

	def initialize(api_url)
		@api_key = ENV['SECRET_TOKEN']
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

	def formal_image_medium
		@response["image"]["sizes"]["Medium"]["url"]
	end

end


