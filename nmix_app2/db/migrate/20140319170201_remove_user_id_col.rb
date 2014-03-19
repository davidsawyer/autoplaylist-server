class RemoveUserIdCol < ActiveRecord::Migration
  def change
  	remove_column :users, :id
  	add_column :users, :id, :string
  end
end
