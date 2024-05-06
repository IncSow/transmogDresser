class CreatePieces < ActiveRecord::Migration[7.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :origin
      t.string :buy_link
      t.integer :size_id
      t.integer :body_part_id
      t.boolean :visibility

      t.timestamps
    end
  end
end
