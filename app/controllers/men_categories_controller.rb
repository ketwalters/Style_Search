class MenCategoriesController < ApplicationController
	before_filter :set_type

	def index
		@categories = type_class.all
	end

	def set_type
		@type = type
	end

	def type
		params[:type] || "MenCategory"
	end

	def type_class
		type.constantize
	end

end