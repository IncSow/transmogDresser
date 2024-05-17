# frozen_string_literal: true

class AddCreatorToOutfits < ActiveRecord::Migration[7.1]
  def change
    change_table :outfits do |t|
      t.remove :user_id
      t.references :user, foreign_key: true
    end
  end
  add_reference :pieces, :user
end
