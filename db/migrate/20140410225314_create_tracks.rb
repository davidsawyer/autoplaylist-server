class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :uri
      t.integer :user_id

      t.timestamps
    end
  end
end
