class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :name
      t.string :email
      t.string :owner_name
      t.string :address_one
      t.string :address_two
      t.string :zip
      t.string :phone
      t.integer :bank_routing_number
      t.integer :bank_account_number
      t.integer :late_fee
      t.integer :dog_intact_fee
      t.integer :dog_sp_fee
      t.boolean :requires_cat_license
      t.integer :cat_intact_fee
      t.integer :cat_sp_fee
      t.references :county

      t.timestamps
    end
    add_index :municipalities, :county_id
  end
end
