class CreatePairs < ActiveRecord::Migration
  def change
  	create_table :pairs do |t|
  		t.string :val1
  		t.string :val2
  		t.timestamps
  	end
  end
end
