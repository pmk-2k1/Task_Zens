class CreateTodoLists < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.text :title
      t.text :note
      t.datetime :time_start
      t.datetime :time_complete
      t.boolean :is_complete, default: false
      

      t.timestamps
    end
  end
end
