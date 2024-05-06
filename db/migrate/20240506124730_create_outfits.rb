class CreateOutfits < ActiveRecord::Migration[7.1]
  def change
    create_table :outfits do |t|
      t.string :name
      t.boolean :visibility
      t.integer :user_id

      t.timestamps
    end
  end
end
