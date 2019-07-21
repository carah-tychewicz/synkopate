class CreateUpbeats < ActiveRecord::Migration[5.2]
  def change
    create_table :upbeats do |t|
      t.string :title
      t.integer :composer_id
      t.integer :repertoire_id

      t.timestamps
    end
  end
end
