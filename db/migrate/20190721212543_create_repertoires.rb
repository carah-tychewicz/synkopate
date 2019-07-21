class CreateRepertoires < ActiveRecord::Migration[5.2]
  def change
    create_table :repertoires do |t|
      t.string :title
      t.integer :upbeat_id
      t.integer :composer_id

      t.timestamps
    end
  end
end
