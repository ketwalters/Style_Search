class CreateWformalitems < ActiveRecord::Migration
  def change
  	create_table  :wformalitems do |t|
  		t.string  :item

  		t.timestamps
  	end
  end

end
