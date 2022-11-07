puts "Creating users..."
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)

puts "Creating category..."
Category.create(name: "Tools")
Category.create(name: "Fertilizer")
Category.create(name: "Feeds")



puts "Creating products..."
Category.all.each do |category|
    10.times do
        Product.create(
            name: Faker::Lorem.sentence(word_count: 1),
            price: rand(100..150),
            category_id: category.id,
            description: Faker::Lorem.paragraph(sentence_count: 1),
            image_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['Fertilizer', 'Feeds', 'Tools'], match_all: true)
        )
    end
end
