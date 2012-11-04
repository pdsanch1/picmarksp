class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :picture_id

      t.timestamps
    end
  end
end
