class CreateComposers < ActiveRecord::Migration[5.2]
  def change
    create_table :composers do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :repertoire_id

      t.timestamps
    end
  end
end
