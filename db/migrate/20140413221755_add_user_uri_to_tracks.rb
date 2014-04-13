class AddUserUriToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :user_uri, :string
  end
end
