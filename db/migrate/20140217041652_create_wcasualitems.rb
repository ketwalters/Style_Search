class CreateWcasualitems < ActiveRecord::Migration
  def change
  	create_table  :wcasualitems do |t|
  		t.string  :item

  		t.timestamps
  	end
  end
end
