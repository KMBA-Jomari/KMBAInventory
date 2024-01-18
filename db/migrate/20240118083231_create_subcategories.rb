class CreateSubcategories < ActiveRecord::Migration[7.1]
  def change
    create_table :subcategories do |t|
      t.references :category, null: false, foreign_key: true
      t.string :sub_category_name
      t.string :description_string

      t.timestamps
    end
  end
end
