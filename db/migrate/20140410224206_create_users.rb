class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uri
      t.integer :event_id

      t.timestamps
    end
    add_index :users, :uri, unique: true
  end
end
