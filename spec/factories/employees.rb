# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    name { 'MyString' }
    salary { 1.5 }
    roles { nil }
  end
end
