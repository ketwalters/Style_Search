class MworkitemsController < ApplicationController

	def index
	api_key = ENV['SECRET_TOKEN']
    @shirt = Api.new("http://api.shopstyle.com/api/v2/products/442204183?pid=#{api_key}")
    @pants = Api.new("http://api.shopstyle.com/api/v2/products/102287364?pid=#{api_key}")
    @shoe = Api.new("http://api.shopstyle.com/api/v2/products/440165262?pid=#{api_key}")
	end

	
end