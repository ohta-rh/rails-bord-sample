class CreateBords < ActiveRecord::Migration
  def change
    create_table :bords do |t|
      t.string :title

      t.timestamps
    end
  end
end
