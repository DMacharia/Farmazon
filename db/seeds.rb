puts "Deleting old data..."
User.destroy_all
Category.destroy_all
Product.destroy_all
User.destroy_all
Review.destroy_all

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

puts "Creating reviews..."

15.times do 
    user_ids = User.all.map {|user| user.id}
    product_ids = Product.all.map {|product| product.id}
    
    Review.create(
        user_id: user_ids[rand(0..4)],
        product_id: product_ids[rand(0..29)],
        star_rating: rand(1..10),
        comment: Faker::Lorem.sentence(word_count: rand(1...10))
    )
end

puts "Seeding done!"
