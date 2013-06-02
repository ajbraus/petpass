class ChangeLicenseIdOnPets < ActiveRecord::Migration
  def change
    remove_column :pets, :liscense_id

    add_column :pets, :license_id, :string
    add_index :pets, :license_id
  end
end
