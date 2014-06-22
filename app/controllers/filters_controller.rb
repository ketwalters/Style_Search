class FiltersController < ApplicationController
	def create
		@formal_images = Filter.new(params[:url])
		@formal_images.save
	end
end