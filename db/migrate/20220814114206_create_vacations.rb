# frozen_string_literal: true

class CreateVacations < ActiveRecord::Migration[7.0]
  def change
    create_table :vacations do |t|
      t.datetime :starts_on
      t.datetime :ends_on
      t.integer :days
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
