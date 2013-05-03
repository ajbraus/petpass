class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :kind
      t.integer :amount_paid
      t.string :county
      t.string :municipality
      t.references :pet

      t.timestamps
    end
  end
end
