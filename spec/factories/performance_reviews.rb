# frozen_string_literal: true

FactoryBot.define do
  factory :performance_review do
    score { 1 }
    employee_id { nil }
    reviewer_id { nil }
  end
end
