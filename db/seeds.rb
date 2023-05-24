puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

epicure = { name: 'Epicure', address: 'Paris', category: 'french' }
une_frite = { name: 'Il était une frite', address: 'Belgique', category: 'belgian' }
pekin_nouille = { name: 'Pekin nouille', address: 'Lyon', category: 'chinese' }
spaghetto = { name: 'Spaghetto', address: 'Marseille', category: 'italian' }
chuchis = { name: 'Chuchis', address: 'Lille', category: 'japanese' }

[epicure, une_frite, pekin_nouille, spaghetto, chuchis].each do |r|
  restaurant = Restaurant.create!(r)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
