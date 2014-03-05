class WcasualitemsController < ApplicationController

	def index
    api_key = ENV['SECRET_TOKEN']
    @shirt = Api.new("http://api.shopstyle.com/api/v2/products/439477238?pid=#{api_key}")
    @jean = Api.new("http://api.shopstyle.com/api/v2/products/443635763?pid=#{api_key}")
    @shoe = Api.new("http://api.shopstyle.com/api/v2/products/445819221?pid=#{api_key}")
    @neck = Api.new("http://api.shopstyle.com/api/v2/products/443771472?pid=#{api_key}")
  end

	
end