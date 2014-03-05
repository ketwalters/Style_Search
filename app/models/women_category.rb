class WomenCategory < ActiveRecord::Base
	belongs_to :women
	has_many :colors
end