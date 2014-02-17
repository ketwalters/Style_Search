class Api < ActionController::Base

	def index
		@response = Api.response
	end
end