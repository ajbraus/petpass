class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :full_name
      t.string :email, :null => false, :default => ""
      t.string :address_one
      t.string :address_two
      t.string :zip
      t.string :city
      t.string :phone_number
      t.string :state

      t.timestamps
    end
    add_index :owners, :email, unique: true
  end
end
