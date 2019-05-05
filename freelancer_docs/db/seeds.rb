# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

(1..5).each do |d|
	FreelancerDocument.create!(
		title: "Document #{d}",
		description: Faker::Lorem.paragraph,
		file_url: Faker::Internet.url('google.com'),
		image_url: Faker::LoremPixel.image("100x120", false, 'business', d)
	)
end