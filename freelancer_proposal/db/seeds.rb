# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

(1..5).each do |d|
    Proposal.create!(
    	customer: "Proposal #{d}",
    	portfolio_url: Faker::Internet.url('google.com'),
    	tools: Faker::Appliance.brand,
    	estimated_hours: Faker::Number.within(1..10),
    	hourly_rate: Faker::Number.between(1, 10),
    	weeks_to_complete: Faker::Number.non_zero_digit,
    	client_email: Faker::Internet.email,
    )
end