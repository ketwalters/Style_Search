class MenCategory < ActiveRecord::Base
	belongs_to :men
	has_many :colors
end