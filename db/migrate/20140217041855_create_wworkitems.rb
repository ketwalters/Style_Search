class CreateWworkitems < ActiveRecord::Migration
  def change
  	create_table  :wworkitems do |t|
  		t.string  :item

  		t.timestamps
  	end
  end

end
