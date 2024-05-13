# frozen_string_literal: true

class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, polymorphic: true
      t.boolean :viewed, default: false

      t.timestamps
    end
  end
end
