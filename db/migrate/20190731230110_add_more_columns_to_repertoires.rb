class AddMoreColumnsToRepertoires < ActiveRecord::Migration[5.2]
  def change
    add_column :repertoires, :genre, :string
  end
end
