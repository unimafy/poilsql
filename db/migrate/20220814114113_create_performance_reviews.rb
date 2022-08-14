# frozen_string_literal: true

class CreatePerformanceReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :performance_reviews do |t|
      t.integer :score
      t.references :employee, null: false, foreign_key: true
      t.timestamps
    end
  end
end
