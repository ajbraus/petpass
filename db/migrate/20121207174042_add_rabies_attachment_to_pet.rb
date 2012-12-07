class AddRabiesAttachmentToPet < ActiveRecord::Migration
	def self.up
    change_table :pets do |t|
      t.has_attached_file :rabies_attachment
    end
  end

  def self.down
    drop_attached_file :pets, :rabies_attachment
  end
end
