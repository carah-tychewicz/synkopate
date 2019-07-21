class RemoveUpbeatIdColumnFromRepertoire < ActiveRecord::Migration[5.2]
  def change
    remove_column :repertoires, :upbeat_id, :integer
  end
end
