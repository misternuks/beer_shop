# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Inserting the breakfast pastry..."
Beer.destroy_all if Rails.env.development?
Category.destroy_all if Rails.env.development?

puts "Contact Dr. Jemima..."
ipa = Category.create!(name: 'IPA')
stout = Category.create!(name: "stout")
sour = Category.create!(name: "sour")

puts "Start warming the syrup..."
Beer.create!(sku: "ipa-sto-enj-001", name: "Stone Enjoy By 04.20.23", category: ipa, photo_url: ActionController::Base.helpers.image_path("stone_enjoy_by.jpg"))

Beer.create!(sku: "stout-fre-bbo-001", name: "Fremont B-Bomb", category: stout, photo_url: ActionController::Base.helpers.image_path("fremont_b_bomb.jpeg"))

Beer.create!(sku: "sour-gre-dou-001", name: "Great Notion Double Blueberry Shake", category: sour, photo_url: ActionController::Base.helpers.image_path("great_notion_double.jpeg"))

puts "Oh my God, my waffle!"
