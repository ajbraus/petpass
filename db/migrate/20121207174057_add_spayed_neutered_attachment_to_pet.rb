class AddSpayedNeuteredAttachmentToPet < ActiveRecord::Migration
	def self.up
    change_table :pets do |t|
      t.has_attached_file :spayed_neutered_attachment
    end
  end

  def self.down
    drop_attached_file :pets, :spayed_neutered_attachment
  end
end
