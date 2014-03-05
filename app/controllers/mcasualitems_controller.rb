class McasualitemsController < ApplicationController

	def index
	api_key = ENV['SECRET_TOKEN']
    @shirt = Api.new("http://api.shopstyle.com/api/v2/products/441414759?pid=#{api_key}")
    @pants = Api.new("http://api.shopstyle.com/api/v2/products/436132224?pid=#{api_key}")
    @shoe = Api.new("http://api.shopstyle.com/api/v2/products/436003053?pid=#{api_key}")
	end

	
end