class Pair < ActiveRecord::Base
	attr_accessbile :items

	def iinitialize(items)
		@items = items
	end

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

	def collab(value)
		array = []
		counts = Hash.new 0
		list = self.recommend(items)
		list.each do |item_array|
			if item_array.include?(value)
				item_array.each do |i|
					if i != value
						array << i
					end
				end
			end
		end
		array.each do |item_a|
			counts[item_a] += 1
		end
		counts.each { |k, v| puts k if v == counts.values.max }
	end

end