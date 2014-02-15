class CreateMenCategories < ActiveRecord::Migration
  def change
    create_table :men_categories do |t|
      t.string :type
      t.belongs_to :men
    end
  end

end
