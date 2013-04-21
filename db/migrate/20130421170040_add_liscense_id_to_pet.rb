class AddLiscenseIdToPet < ActiveRecord::Migration
  def change
    add_column :pets, :liscense_id, :string
    add_index :pets, :liscense_id
  end
end
