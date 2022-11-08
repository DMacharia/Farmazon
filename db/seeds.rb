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



# puts "Creating products..."
# Category.all.each do |category|
#     10.times do
#         Product.create(
#             name: Faker::Lorem.sentence(word_count: 1),
#             price: rand(100..150),
#             category_id: category.id,
#             description: Faker::Lorem.paragraph(sentence_count: 1),
#             image_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['Fertilizer', 'Feeds', 'Tools'], match_all: true)
#         )
#     end
# end

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

# real product data
puts "Creating products..."

Product.create(name: "rake", price:12, category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890529/farm%20apps/rake1_lwpmc7.png")
Product.create(name: "molasses-container", price: 300,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890514/farm%20apps/Molasses-Container-5kg_-Organic_28843_1_hitblm.png")
Product.create(name: "unbreakable-stainless-steel-thermos", price:300 ,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667836133/unbreakable-stainless-steel-thermos_hj2tgq.png")
Product.create(name: "poultry-chicken-feeder", price: 300,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890523/farm%20apps/poultry-chicken-feeder_npyvkk.png")
Product.create(name: "pin-type-ear-tags", price:300 ,category_id:1 , description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890513/farm%20apps/Pin-Type-Ear-Tags-Plain-Large-Yellow-Green-Blue-Red_Tools_23969_1-244x244_y5lpwy.jpg")
Product.create(name: "panga", price: 300,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890260/farm%20apps/KL069_3098-244x244_hgnbm7.jpg")
Product.create(name: "hammer", price:78 ,category_id: 1, description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890241/farm%20apps/istockphoto-183759696-612x612_oinsyu.jpg")
Product.create(name: "wheelbarrow", price: 45,category_id:1 , description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890240/farm%20apps/istockphoto-640133920-612x612_w6ugth.jpg")
Product.create(name: "hamster-cages", price: 78,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890236/farm%20apps/Hamster-cages_vpriww.png")
Product.create(name: "bull-calf-cow-restraining-nose-ring", price: 150,category_id:1 , description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890213/farm%20apps/Bull-Calf-Cow-Restraining-Nose-Ring-Stainless-Steel-Medium-65MM_Tools_23982_1_s7msrp.jpg")
Product.create(name: "bird-drinkers", price: 300,category_id:1 , description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667836163/bird-drinkers_gpldj0.png")
Product.create(name: "bird-feeders", price: 300,category_id: 1, description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890210/farm%20apps/Bird-feeders_frrbpf.png")
Product.create(name: "bird-cages", price: 300,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890209/farm%20apps/Bird-cages_lrzjwa.png")
Product.create(name: "spades", price: 300,category_id: 1, description: "",
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890193/farm%20apps/a356e33d0b67d7ef_apzukb.jpg")
Product.create(name: "sprayers", price: 300,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890133/farm%20apps/1_oiuonq.jpg")
Product.create(name: "sprinklers", price: 300,category_id: 1, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890182/farm%20apps/195deb24c18d213a_pfsfk1.jpg")


Product.create(name: "ultravetis-tomato-twiga", price: 78,category_id:2 , description: "",
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890562/farm%20apps/Ultravetis-Tomato-Twiga-F1-100-Seeds_Seeds_27366_1_pfwrsm.png")
Product.create(name: "ultravetis-cabbage-seed-kiboko", price: 988,category_id: 2, description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890560/farm%20apps/Ultravetis-Cabbage-Seed-Kiboko-F1-5g_Seeds_27308_1_ymftr4.jpg")
Product.create(name: "twigazole", price: 300,category_id:2, description: "", 
    image_url:"https://res.cloudinary.com/dghmulj4i/image/upload/v1667890560/farm%20apps/Twigazole-10-500ml_Agro-chemicals_28127_1-244x244_gvqwj9.jpg" )
Product.create(name: "twiga-asate-haltry", price: 300,category_id: 2, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667836137/Twigasate-300ml_jc7gwk.png")
Product.create(name: "twiga-rosasol", price: 300,category_id:2 , description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667836143/twiga-rosasol-p-200g_aljral.png")
Product.create(name: "twiga-duduthrin", price: 300,category_id: 2, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890546/farm%20apps/Twiga-Duduthrin-1.75-EC-50ml_Agro-chemicals_28136_1_ixsa8d.jpg")
Product.create(name: "twiga-actellic-super-dusting", price:451,category_id: 2, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890544/farm%20apps/Twiga-Actellic-Super-Dusting-Powder-50g_Agro-chemicals_27193_1-244x244_wffxja.jpg")
Product.create(name: "twiga-actellic-gold-dust", price: 451,category_id: 2, description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890544/farm%20apps/Twiga-Actellic-Super-Dusting-Powder-50g_Agro-chemicals_27193_1-244x244_wffxja.jpg")
Product.create(name: "simlaw-onion-seeds", price:300,category_id: 2, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890304/farm%20apps/KL261_9070-244x244_nouyyn.jpg")
Product.create(name: "simlaw-beans-seeds-rose-coco", price: 300,category_id:2 , description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890538/farm%20apps/Simlaw-Beans-Seeds-Rose-Coco-glp-2-2Kg_Feeds_22637_1-244x176_vpc3gh.jpg")
Product.create(name: "osho-topcop", price:300 ,category_id: 2, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890516/farm%20apps/Osho-Topcop-50-WP-250g_Agro-chemicals_26783_1-244x244_eaybm1.png")
Product.create(name: "trevin-dudu-dust", price:300 ,category_id: 2, description: "",
     image_url:"https://res.cloudinary.com/dghmulj4i/image/upload/v1667890499/farm%20apps/KL793_9551-1-244x244_s1shho.jpg" )


Product.create(name: "vital-kondoo-feeds", price: 300,category_id: 3, description: "vital kondoo", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890570/farm%20apps/Vital-Kondoo-1kg_Feeds_27122_1-244x244_qyihqi.png")
Product.create(name: "vital-ndama-feeds", price: 300,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890568/farm%20apps/Vital-Ndama-1kg_Feeds_27124_1-244x244_wyfl0k.png")
Product.create(name: "vital-dry-feeds", price: 300,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890566/farm%20apps/Vital-Dry-1kg_Feeds_27117_1-244x244_mjwhil.png")
Product.create(name: "twiga-mineral-block", price: 300,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890549/farm%20apps/Twiga-Mineral-Block-Livestock-Use-2kg_Feeds_27083_1-244x244_ukwiw1.jpg")
Product.create(name: "twiga-lick-maziwa-zaidi", price: 300,category_id: 3, description: "",
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890547/farm%20apps/Twiga-Lick-Maziwa-Zaidi-Livestock-Use-2kg_Feeds_27086_1-244x244_wwpdzz.jpg")
Product.create(name: "Tuvune-kienyeji-mash", price: 300,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890539/farm%20apps/Tuvune-Kienyeji-Mash-10Kg_Feeds_26894_1_sbkb9i.jpg")
Product.create(name: "masters-growers-mash", price: 98,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890514/farm%20apps/Masters-Growers-Mash-5kg_Feeds_7358_1_qqcz7x.jpg")
Product.create(name: "dairy-masters", price: 99,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890501/farm%20apps/KL864_10350-1-244x244_b1hbob.jpg")
Product.create(name: "twiga-lick-dry-cow", price: 399,category_id: 3, description: "", 
    image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890426/farm%20apps/KL638_9404-244x244_i5bte5.jpg")
Product.create(name: "twiga-lick-joto", price: 300,category_id: 3, description: "",
     image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890424/farm%20apps/KL637_7989-244x244_scj7rx.jpg")
Product.create(name: "twiga-lick-ndama", price: 300,category_id: 3, description: "",
        image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1667890472/farm%20apps/KL768_9389-1-244x244_sdcnvo.jpg")
   
# Product.create(name: "", price: ,category_id: 3, description: "", image_url: "")
# Product.create(name: "", price: ,category_id: 3, description: "", image_url: "")
# Product.create(name: "", price: ,category_id: 3, description: "", image_url: "")
# Product.create(name: "", price: ,category_id: 3, description: "", image_url: "")
# Product.create(name: "", price: ,category_id: 3, description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")

# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url:"")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")
# Product.create(name: "", price: ,category_id: , description: "", image_url: "")

# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url:"" )
# Product.create(name: "", price: ,category_id: , description: , image_url:"" )
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url:"")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")
# Product.create(name: "", price: ,category_id: , description: , image_url: "")

