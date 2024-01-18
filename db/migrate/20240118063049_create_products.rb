class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :description
      t.references :uom, null: false, foreign_key: true
      t.integer :price
      t.integer :quantity
      t.string :status
      t.string :other_details
      t.references :category, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
