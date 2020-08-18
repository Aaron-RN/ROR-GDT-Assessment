# frozen_string_literal: true

class CreateLocalMusicians < ActiveRecord::Migration[6.0]
  def change
    create_table :local_musicians do |t|
      t.string :name, null: false
      t.integer :age
      t.boolean :active, default: false, null: false

      t.timestamps
    end
  end
end
