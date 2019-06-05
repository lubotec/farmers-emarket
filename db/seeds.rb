# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts "Creating users"
10.times do   
  user = User.create(email: Faker::Internet.email, password: "password", first_name: Faker::Name.male_first_name , last_name: Faker::Name.last_name, role: ["farmer", "restaurant"].sample)
end

farmers = User.where(role: "farmer")
restaurants = User.where(role: "restaurant")



addresses = ['Viladecans', 'Vallirana',  'Ordal' , 'Martorell', 'Terassa', 'Sabadell', 'Montgat', 'Cabrera de Mar', 'Granollers', 'Matadepera', 'Begues']
puts "Creating farmers"
Farmer.destroy_all
10.times do 
  Farmer.create(address: addresses.sample, name: Faker::Company.name, description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.", user: farmers.sample )
end

Farmer.create(address: addresses.sample, name: 'Ponytail Farm', description: "I have been a farmer for over 35 years now. I started when I was a little boy assisting my father with his farm. I took over the family business when I was 21.", user: farmers.sample )
Farmer.create(address: addresses.sample, name: 'Mangoville Farm', description: "ALPHONSO, THE king of mango varieties. Plantations International an authority on mango cultivation, and a pioneer in establishing plantations` has successfully demonstrated the promises held out by the superior mango variety `Alphonso’.", user: farmers.sample )
Farmer.create(address: addresses.sample, name: 'Robinwood Farm.', description: "We, David and Christine Jernigan met Debbie and Allen Sinclair in March of 2017.  They were planning to retire and enjoy some well earned rest and relaxation.  We had been looking for a hydroponic farming opportunity for some time.", user: farmers.sample )
Farmer.create(address: addresses.sample, name: 'Precious Stone Farm', description: "Once a thriving agricultural area, North Whitehall has succombed to urban sprawl.  We are one of the few farms left in the area.  Here we raise field crops, friuts, vegetables, chickens for eggs, and sheep.", user: farmers.sample )
Farmer.create(address: addresses.sample, name: 'Meadowgrove Farm', description: "Welcome to Jade Family Farm!  Our Mission is to provide wholesome, nutritious food to our fellow humans while protecting and nurturing the part of the earth we steward.  Further, we strive to create a dynamic, diverse, and beautiful farm environment, have a ton of fun, and make a decent living doing it.", user: farmers.sample )


farmerphotos= ['https://images.unsplash.com/photo-1523867574998-1a336b6ded04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80','https://images.unsplash.com/uploads/1411451635098130bb10f/8609bf40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1510&q=80','https://images.unsplash.com/photo-1543418219-44e30b057fea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80','https://images.unsplash.com/9/fields.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1280&q=80','https://images.unsplash.com/photo-1500076656116-558758c991c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2851&q=80','https://images.unsplash.com/photo-1500595046743-cd271d694d30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80','https://images.unsplash.com/photo-1536657464919-892534f60d6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80']



puts "Creating restaurants"
Restaurant.destroy_all
14.times do   
  Restaurant.create(address: addresses.sample, name: Faker::Restaurant.name, user: restaurants.sample)
end

puts "Creating products"
Product.destroy_all

photos = ['https://media.mnn.com/assets/images/2018/06/cut_watermelon.jpg.653x0_q80_crop-smart.jpg', 'https://cdn1.medicalnewstoday.com/content/images/articles/322/322096/mangoes-chopped-and-fresh.jpg', 'https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA2NS8xNDkvb3JpZ2luYWwvYmFuYW5hcy5qcGc=','https://www.oleolife.com/wp-content/uploads/2018/01/quality-fresh-coconut-fruits-for-sale.jpg','https://draxe.com/wp-content/uploads/2015/06/CashewHeader.jpg','https://cdn.vox-cdn.com/thumbor/1lkbiwsmSbovu-HAyjWeZTcGQo8=/0x0:1920x1280/1200x800/filters:focal(807x487:1113x793)/cdn.vox-cdn.com/uploads/chorus_image/image/57340051/apples_2811968_1920.0.jpg','https://i.ndtvimg.com/i/2015-09/grapes_625x350_61443376353.jpg','https://www.bbcgoodfood.com/sites/default/files/guide/guide-image/2013/10/the-health-benefits-of-quinoa-main-image-700-350.jpg','https://thesourcebulkfoods.com.au/wp-content/uploads/2017/09/alfalfa-40100-c.jpg','https://pull01-thefruitcompany.netdna-ssl.com/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/p/o/pomegranate_4.jpg','http://mandalindeli.co.uk/wp-content/uploads/2016/12/Blood-ORange.jpg']
# 100.times do 
#   product = Product.create(name: Faker::Food.ingredient, farmer: Farmer.all.sample)
  
#   ph = ProductPhoto.new(product: product)
#   ph.remote_data_url = photos.sample
#   ph.save
# end


mango = Product.create!(
  name: 'Mango', 
  farmer: Farmer.all.sample
  category:
  unit_of_measurement:
  inventory:
  rating:
  description:
  price_cents:

  )
ProductPhoto.create!(product: mango, remote_data_url:'https://images.unsplash.com/photo-1501746877-14782df58970?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

red_apple = Product.create!(name: 'Red Apple', farmer: Farmer.all.sample)
ProductPhoto.create!(product: red_apple, remote_data_url:'https://images.unsplash.com/photo-1554374814-6f1baaa46062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

green_apple = Product.create!(name: 'Green Apple', farmer: Farmer.all.sample)
ProductPhoto.create!(product: green_apple, remote_data_url:'https://images.unsplash.com/photo-1512578659172-63a4634c05ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

honeycrisp_apple = Product.create!(name: 'Honeycrisp Apple', farmer: Farmer.all.sample)
ProductPhoto.create!(product: honeycrisp_apple, remote_data_url:'https://images.unsplash.com/photo-1506813713591-56fc5e539b80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

granny_smith_apple = Product.create!(name: 'Granny Smith Apple', farmer: Farmer.all.sample)
ProductPhoto.create!(product: granny_smith_apple, remote_data_url:'https://images.unsplash.com/photo-1457803097035-3ace37af34a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

red_apple = Product.create!(name: 'Red Apple', farmer: Farmer.all.sample)
ProductPhoto.create!(product: red_apple, remote_data_url:'https://images.unsplash.com/photo-1520325873795-c1d9bd401cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

red_apple = Product.create!(name: 'Red Apple', farmer: Farmer.all.sample)
ProductPhoto.create!(product: red_apple, remote_data_url:'https://images.unsplash.com/photo-1520325873795-c1d9bd401cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')

strawberries = Product.create!(name: 'Strawberries', farmer: Farmer.all.sample)
ProductPhoto.create!(product: strawberries, remote_data_url:'https://images.unsplash.com/photo-1520325873795-c1d9bd401cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')