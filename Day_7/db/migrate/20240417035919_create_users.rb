class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
