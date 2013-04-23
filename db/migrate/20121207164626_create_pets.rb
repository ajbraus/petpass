class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :rabies_expiration
      t.string :color
      t.integer :age
      t.string :sex
      t.string :markings
      t.string :rabies_tag_number
      t.references :user

      t.timestamps
    end
    add_index :pets, :user_id
  end
end
