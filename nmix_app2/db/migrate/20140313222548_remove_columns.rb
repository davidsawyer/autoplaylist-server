class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :Tracks, :length

  	add_column :Tracks, :uri, :string
  end
end
