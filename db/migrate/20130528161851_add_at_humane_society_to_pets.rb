class AddAtHumaneSocietyToPets < ActiveRecord::Migration
  def change
    add_column :pets, :at_humane_society, :boolean, default: false
  end
end
