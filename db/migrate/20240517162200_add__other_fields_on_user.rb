class AddOtherFieldsOnUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :x, :string, default: ""
    add_column :users, :instagram, :string, default: ""
    add_column :users, :pinterest, :string, default: ""
  end
end



