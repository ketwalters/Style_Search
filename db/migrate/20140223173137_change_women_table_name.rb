class ChangeWomenTableName < ActiveRecord::Migration
  def change
  	rename_table :women_categories, :womencategories
  end
end
