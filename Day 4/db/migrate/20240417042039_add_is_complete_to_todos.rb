class AddIsCompleteToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :is_complete, :boolean, default: false
  end
end
