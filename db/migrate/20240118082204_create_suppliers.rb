class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :other_details

      t.timestamps
    end
  end
end
