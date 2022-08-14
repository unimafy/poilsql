# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :role
  has_many :vacations, dependent: :destroy
  has_many :performance_reviews, dependent: :destroy
end
