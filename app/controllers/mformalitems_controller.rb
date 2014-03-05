class MformalitemsController < ApplicationController

	def index
		  api_key = ENV['SECRET_TOKEN']
	    @suit = Api.new("http://api.shopstyle.com/api/v2/products/202159001?pid=#{api_key}")
	    @shoe = Api.new("http://api.shopstyle.com/api/v2/products/434119139?pid=#{api_key}")
    end

	
end