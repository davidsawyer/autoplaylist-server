class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :user_id
      t.string :name
      t.string :artist
      t.string :album
      t.string :uri

      t.timestamps
    end
  end
end
