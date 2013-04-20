class AddMicrochipCode < ActiveRecord::Migration
  def change
    add_column :pets, :microchip_code, :string
    add_index :pets, :microchip_code
  end
end
