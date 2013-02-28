class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :bord

      t.timestamps
    end
    add_index :comments, :bord_id
  end
end
