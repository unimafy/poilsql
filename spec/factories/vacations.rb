# frozen_string_literal: true

FactoryBot.define do
  factory :vacation do
    starts_on { '2022-08-14 17:42:08' }
    ends_on { '2022-08-14 17:42:08' }
    days { 1 }
    employee { nil }
  end
end
