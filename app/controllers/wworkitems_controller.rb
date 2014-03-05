class WworkitemsController < ApplicationController

	def index
    api_key = ENV['SECRET_TOKEN']
    @shirt = Api.new("http://api.shopstyle.com/api/v2/products/442023246?pid=#{api_key}")
    @blazer = Api.new("http://api.shopstyle.com/api/v2/products/431656849?pid=#{api_key}")
    @skirt = Api.new("http://api.shopstyle.com/api/v2/products/433309465?pid=#{api_key}")
    @shoe = Api.new("http://api.shopstyle.com/api/v2/products/438238320?pid=#{api_key}")
  end

	
end