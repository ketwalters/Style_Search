class Color < ActiveRecord::Base
	belongs_to :men_categories
	belongs_to :women_categories
end