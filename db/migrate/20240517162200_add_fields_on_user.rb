class AddFieldsOnUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :user_x, :string
    add_column :users, :user_instagram, :string
    add_column :users, :user_pinterest, :string
  end
end
