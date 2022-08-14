# frozen_string_literal: true

require 'faker'

Role.destroy_all
Employee.destroy_all
PerformanceReview.destroy_all
Vacation.destroy_all

Role.create!(name: 'admin')
puts 'Roles created'

100.times do
  Employee.create!(
    name: Faker::Name.name,
    salary: Faker::Number.decimal(l_digits: 2),
    role: Role.first
  )
  puts "seeding #{Employee.count}th employee"
end

1000.times do
  PerformanceReview.create!(
    employee: Employee.all.sample,
    score: Faker::Number.between(from: 1, to: 100)
  )
  puts "seeding #{PerformanceReview.count}th performance review"
end

100.times do
  Vacation.create!(
    employee: Employee.all.sample,
    starts_on: Faker::Date.between(from: Time.zone.today, to: Time.zone.today + 365),
    ends_on: Faker::Date.between(from: Time.zone.today, to: Time.zone.today + 365),
    days: Faker::Number.between(from: 1, to: 30)
  )
  puts "seeding #{Vacation.count}th vacation"
end
