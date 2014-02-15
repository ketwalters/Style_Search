class UsersController < ActionController::Base
	before_filter :set_type

	def index
		@users = type_class.all
	end

	def set_type
		@type = type
	end

	def type
		params[:type] || "User"
	end

	def type_class
		type.constantize
	end
end