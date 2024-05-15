# frozen_string_literal: true

class CreateOutfitPieces < ActiveRecord::Migration[7.1]
  def change
    create_table :outfit_pieces do |t|
      t.references :outfits
      t.references :pieces
    end
  end
end
