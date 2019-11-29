# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# for i in 1..10
#     User.create(
#         name: Faker::Name.name,
#         email: Faker::Internet.email
#     )
#     puts "Created user #{i} of 10"
# end

# numUsers = User.all.length
# for i in 1..numUsers
#     User.find(i).create_address(
#         street: Faker::Address.street_address,
#         city: Faker::Address.city
#     )
#     puts "Created address #{i} of #{numUsers}"
# end

# for i in 1..20
#     Listing.create(
#         name: Faker::Book.title,
#         price: rand(1..1000),
#         user_id: rand(1..10)
#     )
#     puts "Created book #{i} of 20"
# end

for i in 1..20
    img = Down.download(Faker::LoremPixel.image(size: "200x200", is_gray: false, category: 'nature'))
    Listing.find(i).image.attach(io: img, filename: "#{Listing.name}_image")
    puts "image #{i} of 20 attached"
end