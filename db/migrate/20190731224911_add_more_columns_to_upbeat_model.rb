class AddMoreColumnsToUpbeatModel < ActiveRecord::Migration[5.2]
  def change
    add_column :upbeats, :artist, :string
    add_column :upbeats, :album, :string
    add_column :upbeats, :genre, :string
    add_column :upbeats, :duration, :string
  end
end
