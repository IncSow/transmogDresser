# frozen_string_literal: true

class CreateMiddleTables < ActiveRecord::Migration[7.1]
  def change
    create_table :piece_category do |t|
      t.references :pieces
      t.references :categories
    end
    create_table :outfit_category do |t|
      t.references :outfits
      t.references :categories
    end
  end
end
