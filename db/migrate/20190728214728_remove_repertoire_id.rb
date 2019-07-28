class RemoveRepertoireId < ActiveRecord::Migration[5.2]
  def change
    remove_column :composers, :repertoire_id, :integer
  end
end
