class PairsController < ApplicationController

	def self.recommend(items)
		Pair.transaction do 
			@items.combination(2).to_a
			@items.each do |pair|
				p = Pair.find(:first, :conditions => ['val1 = ? and val2 = ?', pair[0], pair[1]])
				p ||= Pair.new(:val1 => pair[0], :val2 => pair[1], :num => 0)
				p.num += 1
				p.save!
			end
		end
	end
end