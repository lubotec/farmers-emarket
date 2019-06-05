# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



FarmerPhoto.destroy_all
Review.destroy_all
OrderProduct.destroy_all

Order.destroy_all
ProductPhoto.destroy_all
Product.destroy_all
Restaurant.destroy_all
Farmer.destroy_all
User.destroy_all




puts "Creating users"

farmer1 = User.create!(
  email: Faker::Internet.email, 
  password: "password", 
  first_name: Faker::Name.male_first_name , 
  last_name: Faker::Name.last_name, 
  role: "Farmer",
  remote_avatar_url:'https://images.unsplash.com/photo-1528695037290-720b9ad2f242?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
    )

farmer2 = User.create!(
  email: Faker::Internet.email, 
  password: "password", 
  first_name: Faker::Name.male_first_name , 
  last_name: Faker::Name.last_name, 
  role: "Farmer",
  remote_avatar_url:'https://images.unsplash.com/photo-1529600490622-6fe4b898c84e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
   )

farmer3 = User.create!(
email: Faker::Internet.email, 
password: "password", 
first_name: Faker::Name.male_first_name , 
last_name: Faker::Name.last_name, 
role: "Farmer",
remote_avatar_url:'https://images.unsplash.com/photo-1509506489701-dfe23b067808?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)
  
farmer4 = User.create!(
  email: Faker::Internet.email, 
  password: "password", 
  first_name: Faker::Name.male_first_name , 
  last_name: Faker::Name.last_name, 
  role: "Farmer",
  remote_avatar_url:'https://images.unsplash.com/photo-1558284811-bebfac1d15e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  )

      farmer5 = User.create!(
        email: Faker::Internet.email, 
        password: "password", 
        first_name: Faker::Name.male_first_name , 
        last_name: Faker::Name.last_name, 
        role: "Farmer",
        remote_avatar_url:'https://images.unsplash.com/photo-1520799139422-a4a178de50ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
        )

        addresses = ['Viladecans', 'Vallirana',  'Ordal' , 'Martorell', 'Terassa', 'Sabadell', 'Montgat', 'Cabrera de Mar', 'Granollers', 'Matadepera', 'Begues']
        puts "Creating farmers"

        farmerphotos = ['https://images.unsplash.com/photo-1523867574998-1a336b6ded04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80','https://images.unsplash.com/uploads/1411451635098130bb10f/8609bf40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1510&q=80','https://images.unsplash.com/photo-1543418219-44e30b057fea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80','https://images.unsplash.com/9/fields.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1280&q=80','https://images.unsplash.com/photo-1500076656116-558758c991c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2851&q=80','https://images.unsplash.com/photo-1500595046743-cd271d694d30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80','https://images.unsplash.com/photo-1536657464919-892534f60d6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80']


        farm1 = Farmer.create!(
          address: addresses.sample, 
          name: Faker::Company.name, 
          description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.",
          user: farmer1
        )
        FarmerPhoto.create!(
          farmer: farm1, 
          remote_data_url: farmerphotos[1]
          )
        FarmerPhoto.create!(
          farmer: farm1, 
          remote_data_url: farmerphotos[2]
          )
       


        farm2 = Farmer.create!(
          address: addresses.sample, 
          name: Faker::Company.name, 
          description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.",
          user: farmer2
        )
        FarmerPhoto.create!(
          farmer: farm2, 
          remote_data_url: farmerphotos[3]
          )
        FarmerPhoto.create!(
          farmer: farm2, 
          remote_data_url: farmerphotos[4]
          )


        farm3 = Farmer.create!(
          address: addresses.sample, 
          name: Faker::Company.name, 
          description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.",
          user: farmer3
        )
        FarmerPhoto.create!(
          farmer: farm3, 
          remote_data_url: farmerphotos[5]
          )
        FarmerPhoto.create!(
          farmer: farm3, 
          remote_data_url: farmerphotos[6]
          )


        farm4 = Farmer.create!(
          address: addresses.sample, 
          name: Faker::Company.name, 
          description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.",
          user: farmer4
        )
        FarmerPhoto.create!(
          farmer: farm4, 
          remote_data_url: farmerphotos[7]
          )
        FarmerPhoto.create!(
          farmer: farm4, 
          remote_data_url: farmerphotos[8]
          )


        farm5 = Farmer.create!(
          address: addresses.sample, 
          name: Faker::Company.name, 
          description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.",
          user: farmer5
        )
        FarmerPhoto.create!(
          farmer: farm5, 
          remote_data_url: farmerphotos[9]
          )
        FarmerPhoto.create!(
          farmer: farm5, 
          remote_data_url: farmerphotos[10]
          )



        puts "Creating users"

        resto1 = User.create!(
          email: Faker::Internet.email,
          password: "password",
          first_name: Faker::Name.male_first_name ,
          last_name: Faker::Name.last_name,
          role: "Restaurant",
          remote_avatar_url: "https://images.unsplash.com/photo-1559548331-f9cb98001426?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
            )
         
         resto2 = User.create!(
          email: Faker::Internet.email,
          password: "password",
          first_name: Faker::Name.male_first_name ,
          last_name: Faker::Name.last_name,
          role: "Restaurant",
          remote_avatar_url: 'https://images.unsplash.com/photo-1553484771-689277e6fa16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
            )
         
         resto3 = User.create!(
          email: Faker::Internet.email,
          password: "password",
          first_name: Faker::Name.male_first_name ,
          last_name: Faker::Name.last_name,
          role: "Restaurant",
          remote_avatar_url: 'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
            )
         
         resto4 = User.create!(
          email: Faker::Internet.email,
          password: "password",
          first_name: Faker::Name.male_first_name ,
          last_name: Faker::Name.last_name,
          role: "Restaurant",
          remote_avatar_url: 'https://images.unsplash.com/photo-1558700213-50487e1b267a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
            )
         
         resto5 = User.create!(
          email: Faker::Internet.email,
          password: "password",
          first_name: Faker::Name.male_first_name ,
          last_name: Faker::Name.last_name,
          role: "Restaurant",
          remote_avatar_url: 'https://images.unsplash.com/photo-1529701870190-9ae4010fd124?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
            )
         
            puts "Creating restaurants"

         Restaurant.create!(
          name: "La Famiglia",
          address: "Passeig de Sant Joan Bosco, 42, 08017 Barcelona",
          user: resto1
            )
         
         Restaurant.create!(
          name: "Dale",
          address: "Carrer del Torrent de les Flors, 96, 08024 Barcelona",
          user: resto2
            )
         
         Restaurant.create!(
          name: "La Tortilla",
          address: "Carrer de les Escoles Pies, 105, 08017 Barcelona",
          user: resto3
            )
         
         Restaurant.create!(
          name: "Chinese Palace",
          address: "Carrer del Rosselló, 515, 08025 Barcelona",
          user: resto4
            )
         
         Restaurant.create!(
          name: "El turón",
          address: "Carrer de Montsió, 3, 08002 Barcelona",
          user: resto5
            )

puts "Creating products"


# photos = ['https://media.mnn.com/assets/images/2018/06/cut_watermelon.jpg.653x0_q80_crop-smart.jpg', 'https://cdn1.medicalnewstoday.com/content/images/articles/322/322096/mangoes-chopped-and-fresh.jpg', 'https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA2NS8xNDkvb3JpZ2luYWwvYmFuYW5hcy5qcGc=','https://www.oleolife.com/wp-content/uploads/2018/01/quality-fresh-coconut-fruits-for-sale.jpg','https://draxe.com/wp-content/uploads/2015/06/CashewHeader.jpg','https://cdn.vox-cdn.com/thumbor/1lkbiwsmSbovu-HAyjWeZTcGQo8=/0x0:1920x1280/1200x800/filters:focal(807x487:1113x793)/cdn.vox-cdn.com/uploads/chorus_image/image/57340051/apples_2811968_1920.0.jpg','https://i.ndtvimg.com/i/2015-09/grapes_625x350_61443376353.jpg','https://www.bbcgoodfood.com/sites/default/files/guide/guide-image/2013/10/the-health-benefits-of-quinoa-main-image-700-350.jpg','https://thesourcebulkfoods.com.au/wp-content/uploads/2017/09/alfalfa-40100-c.jpg','https://pull01-thefruitcompany.netdna-ssl.com/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/p/o/pomegranate_4.jpg','http://mandalindeli.co.uk/wp-content/uploads/2016/12/Blood-ORange.jpg']

inventories = (150..200).to_a
ratings = (1..5).to_a
price = (7..20).to_a

fruits = "Fruits"
vegetables = "Vegetables"
meat = "Meat"
dairy = "Dairy"

kg = "kg"
lbs = "lbs"
liter = "liter"
gallons = "gallons"
ounces = "ounces"
grams = "grams"
unit = "unit"


mango = Product.create!(
name: 'Mango', 
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: mango, 
remote_data_url:'https://images.unsplash.com/photo-1501746877-14782df58970?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)


red_apple = Product.create!(
name: 'Red Apple',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: red_apple, 
remote_data_url:'https://images.unsplash.com/photo-1554374814-6f1baaa46062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

green_apple = Product.create!(
name: 'Green Apple',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: green_apple,
remote_data_url:'https://images.unsplash.com/photo-1512578659172-63a4634c05ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

honeycrisp_apple  = Product.create!(
name: 'Honeycrisp Apple',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: honeycrisp_apple,
remote_data_url:'https://images.unsplash.com/photo-1506813713591-56fc5e539b80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

granny_smith_apple  = Product.create!(
name: 'Granny Smith Apple',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: granny_smith_apple,
remote_data_url:'https://images.unsplash.com/photo-1457803097035-3ace37af34a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

red_apple = Product.create!(
name: 'Red Apple',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: red_apple,
remote_data_url:'https://images.unsplash.com/photo-1520325873795-c1d9bd401cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

beef = Product.create!(
name: 'Beef',
farmer: Farmer.all.sample,
category: meat,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: beef,
remote_data_url:'https://images.unsplash.com/photo-1547050605-2f268cd5daf0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

beef1 = Product.create!(
name: 'Beef',
farmer: Farmer.all.sample,
category: meat,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: beef1,
remote_data_url:'https://images.unsplash.com/photo-1551028150-64b9f398f678?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

beef2 = Product.create!(
name: 'Beef',
farmer: Farmer.all.sample,
category: meat,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: beef2,
remote_data_url:'https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)


iham = Product.create!(
name: 'Iberian ham',
farmer: Farmer.all.sample,
category: meat,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: iham,
remote_data_url:'https://images.unsplash.com/photo-1504078523815-26230dc58e52?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
)

ham = Product.create!(
name: 'Ham',
farmer: Farmer.all.sample,
category: meat,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: ham,
remote_data_url:'https://images.unsplash.com/photo-1524438418049-ab2acb7aa48f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
)

yogurt = Product.create!(
name: 'Yogurt',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: "kg",
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: yogurt,
remote_data_url:'https://images.unsplash.com/photo-1555465083-a845797ef750?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

wyogurt = Product.create!(
name: 'White yogurt',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: wyogurt,
remote_data_url:'https://images.unsplash.com/photo-1545165375-8be534459875?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

milk = Product.create!(
name: 'Milk',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: "l",
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: 1
)
ProductPhoto.create!(
product: milk,
remote_data_url:'https://images.unsplash.com/photo-1550630997-aea8d3d982ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

milk1 = Product.create!(
name: 'Milk',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: 0.8
)
ProductPhoto.create!(
product: milk1,
remote_data_url:'https://images.unsplash.com/photo-1523473827533-2a64d0d36748?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

eggs = Product.create!(
name: 'Brown eggs',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: unit,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: 0.3
)
ProductPhoto.create!(
product: eggs,
remote_data_url:'https://images.unsplash.com/photo-1515878354478-68e5e10ae007?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

eggs1 = Product.create!(
name: 'Eggs',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: unit,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: 0.35
)
ProductPhoto.create!(
product: eggs1,
remote_data_url:'https://images.unsplash.com/photo-1506976785307-8732e854ad03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

eggs2 = Product.create!(
name: 'Eggs',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: unit,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: 0.25
)
ProductPhoto.create!(
product: eggs2,
remote_data_url:'https://images.unsplash.com/photo-1498654077810-12c21d4d6dc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

eggs3 = Product.create!(
name: 'Eggs (brown and white)',
farmer: Farmer.all.sample,
category: dairy,
unit_of_measurement: unit,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: 0.4
)
ProductPhoto.create!(
product: eggs3,
remote_data_url:'https://images.unsplash.com/photo-1504381939604-a88f780271a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

strawberries = Product.create!(
name: 'Strawberries',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: strawberries,
remote_data_url:'https://images.unsplash.com/photo-1520325873795-c1d9bd401cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

strawberries = Product.create!(
name: 'Strawberries',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: strawberries,
remote_data_url:'https://images.unsplash.com/photo-1520325873795-c1d9bd401cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

lemon = Product.create!(
name: 'Lemon',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: lemon,
remote_data_url:'https://images.unsplash.com/photo-1534531173927-aeb928d54385?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

orange = Product.create!(
name: 'Orange',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: orange,
remote_data_url:'https://images.unsplash.com/photo-1536632901336-0dbfe885db89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

pineapple = Product.create!(
name: 'Pineapple',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: pineapple,
remote_data_url:'https://images.unsplash.com/photo-1524293191286-59ec719556d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

papaya = Product.create!(
name: 'Papaya',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: papaya,
remote_data_url:'https://images.unsplash.com/photo-1517282009859-f000ec3b26fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

strawberry1 = Product.create!(
name: 'Strawberry',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: strawberry1,
remote_data_url:'https://images.unsplash.com/photo-1464454709131-ffd692591ee5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

blueberries = Product.create!(
name: 'Blueberries',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: blueberries,
remote_data_url:'https://images.unsplash.com/photo-1460400408855-36abd76648b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

blueberries = Product.create!(
name: 'Blueberries',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: blueberries,
remote_data_url:'https://images.unsplash.com/photo-1460400408855-36abd76648b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

avocado = Product.create!(
name: 'Avocado',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: avocado,
remote_data_url:'https://images.unsplash.com/photo-1531880567437-5bfef553f822?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)    


orange1 = Product.create!(
name: 'Orange',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: orange1,
remote_data_url:'https://images.unsplash.com/photo-1507598641400-ec3536ba81bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

lemon1 = Product.create!(
name: 'Lemon',
farmer: Farmer.all.sample,
category: fruits,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: lemon1,
remote_data_url:'https://images.unsplash.com/photo-1519625149185-7626ff3a86bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)



carrots = Product.create!(
name: 'Carrots',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: carrots,
remote_data_url:'https://images.unsplash.com/photo-1442897961655-905a8343c8eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

toma = Product.create!(
name: 'Tomatoes',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: toma,
remote_data_url:'https://images.unsplash.com/photo-1467020323552-36f7bf0e30e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

carrots1 = Product.create!(
name: 'Carrots',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: carrots1,
remote_data_url:'https://images.unsplash.com/photo-1472653525502-fc569e405a74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

rpepper = Product.create!(
name: 'Red Pepper',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: rpepper,
remote_data_url:'https://images.unsplash.com/photo-1513530774447-73de85f43d60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

eggplant = Product.create!(
name: 'Eggplant',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: eggplant,
remote_data_url:'https://images.unsplash.com/photo-1528826007177-f38517ce9a8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

cucumber = Product.create!(
name: 'Cucumber',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: cucumber,
remote_data_url:'https://images.unsplash.com/photo-1449300079323-02e209d9d3a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

asparag = Product.create!(
name: 'Green Aspargus',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: asparag,
remote_data_url:'https://images.unsplash.com/photo-1515471209610-dae1c92d8777?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

tomato1 = Product.create!(
name: 'Red tomato',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: tomato1,
remote_data_url:'https://images.unsplash.com/photo-1444731961956-751ed90465a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

bcarrots = Product.create!(
name: 'Baby carrots',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: bcarrots,
remote_data_url:'https://images.unsplash.com/photo-1522184216316-3c25379f9760?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)

tomato2 = Product.create!(
name: 'Red Tomatoes',
farmer: Farmer.all.sample,
category: vegetables,
unit_of_measurement: kg,
inventory: inventories.sample,
rating: ratings.sample,
description: "This product is naturally organic and has been raised with expertise, passion and love",
price: price.sample
)
ProductPhoto.create!(
product: tomato2,
remote_data_url:'https://images.unsplash.com/photo-1452948491233-ad8a1ed01085?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
)
