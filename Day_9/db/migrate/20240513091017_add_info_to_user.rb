class AddInfoToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :fullname, :string
    add_column :users, :admin, :boolean, default: 0
  end
end
