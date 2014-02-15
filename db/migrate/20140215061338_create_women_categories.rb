class CreateWomenCategories < ActiveRecord::Migration
  def change
    create_table :women_categories do |t|
      t.string :type
      t.belongs_to :women
    end
  end

end