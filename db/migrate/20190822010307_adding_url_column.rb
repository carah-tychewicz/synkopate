class AddingUrlColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :upbeats, :url, :string
  end
end
