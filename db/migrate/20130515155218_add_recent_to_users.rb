class AddRecentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recent, :bool, default: false    
  end
end
