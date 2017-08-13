# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
categories = Category.create([
  { name: 'Basement Renovation' },
  { name: 'Bathroom Renovation' },
  { name: 'Condominium Renovations' },
  { name: 'Decks' },
  { name: 'Demolition' }
])

Category.create(name: 'Default Category', default: true)

companies = Company.create([
  { name: 'The Basement Renovators', description: 'We renovate basements!' },
  { name: 'The Bathroom Renovators', description: 'We renovate bathrooms!' },
  { name: 'The Condominium Renovators', description: 'We renovate condominiums!' },
  { name: 'The Deck Company', description: 'We build decks!' },
  { name: 'The Demolition Company', description: 'We demolish things!' }
])


companies.each_with_index { |c, i| c.categories << categories[i] }

companies.each do |c|
  rand(5).times { |i| c.invoices.create title: "Invoice ##{i}" }
end
