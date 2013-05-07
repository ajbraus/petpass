class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.date :rabies_expiration
      t.string :color
      t.date :born_on
      t.boolean :recent
      t.string :sex
      t.string :markings
      t.string :rabies_tag_number
      t.references :user
      t.string :species

      t.timestamps
    end
    add_index :pets, :user_id
  end
end
