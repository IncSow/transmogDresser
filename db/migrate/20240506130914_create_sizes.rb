# frozen_string_literal: true

class CreateSizes < ActiveRecord::Migration[7.1]
  def change
    create_table :sizes do |t|
      t.string :fr_name
      t.string :eu_name
      t.string :us_name

      t.timestamps
    end
  end
end
