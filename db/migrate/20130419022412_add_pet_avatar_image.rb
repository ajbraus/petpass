class AddPetAvatarImage < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :pets, :avatar
  end
end
