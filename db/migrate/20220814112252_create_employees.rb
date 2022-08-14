# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.float :salary
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
# rails generate model performance_review score:integer employee_id:references reviewer_id:references
