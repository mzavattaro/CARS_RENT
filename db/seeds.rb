# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Cleaning database.."
User.destroy_all
Car.destroy_all

gordon = User.create!(email: "gordon@email.com", password: "123456", first_name: "Gordon", last_name: "Leech", address: "161 Collins St, Melbourne")
neal = User.create!(email: "neal@email.com", password: "123456", first_name: "Neal", last_name: "Brophy", address: "121 King St, Melbourne ")
roy = User.create!(email: "roy@email.com", password: "123456", first_name: "Roy", last_name: "Burtchaell", address: "396 Ballarat Rd, Sunshine")
jon = User.create!(email: "jon@email.com", password: "123456", first_name: "Jonathan", last_name: "Badeaux", address: "368 Sydney Rd, Brunswick ")
jay = User.create!(email: "jay@email.com", password: "123456", first_name: "Jay", last_name: "Leno", address: "3000 W Alameda Ave, Burbank, CA 91505,")
salar = User.create!(email: "salar@email.com", password: "123456", first_name: "Salar", last_name: "Akhavan", address: "232 Foote St, Templestowe")
lady = User.create!(email: "lady@email.com", password: "123456", first_name: "Hillary", last_name: "Clinton", address: "364 Manville Rd, Pleasantville, NY 10570")
elle = User.create!(email: "ellen@email.com", password: "123456", first_name: "Ellen", last_name: "Degeners", address: "6925 Hollywood Blvd, Hollywood, CA 90028")
ghost = User.create!(email: "ghost@email.com", password: "123456", first_name: "Harambe", last_name: "Ghost", address: "Elliott Ave, Parkville VIC 3052")
pizza = User.create!(email: "pizza@email.com", password: "123456", first_name: "Hot", last_name: "Dog", address: "1 Parliament Pl, East Melbourne VIC 3002")

puts "Creating cars"
land = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/landwind.jpg"
wild = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/wildwacky.jpg"
robin = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/ReliantRobin.jpg"
dead = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331924/coroner.jpg"
leno = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331926/leno_buick.jpg"
sal = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331924/joker_truck.jpg"
hills = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/badcar.jpg"
ellen = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/stout.jpg"
bike = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/stout.jpg"
fuel = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/Fuel_Truck.jpg"
# create here
car = Car.new(model: "Land Wind", make: "Land Wind", year: 2018, price: 69, address: "270 Queen St, Melbourne")
car.user = gordon
car.remote_photo_url = land
car.save!

car = Car.new(model: "Action Bike", make: "Wild Wacky", year: 1999, price: 420, address: "121 King St, Melbourne")
car.user = neal
car.remote_photo_url = wild
car.save!
car = Car.new(model: "Robin", make: "Reliant", year: 1973, price: 25, address: "396 Ballarat Rd, Sunshine")
car.user = roy
car.remote_photo_url = robin
car.save!
car = Car.new(model: "Coroner's Van", make: "Chevy", year: 1949, price: 125, address: "368 Sydney Rd, Brunswick")
car.user = jon
car.remote_photo_url = dead
car.save!
car = Car.new(model: "Devastator", make: "Buick", year: 1956, price: 542, address: "3000 W Alameda Ave, Burbank, CA 91505")
car.user = jay
car.remote_photo_url = leno
car.save!
car = Car.new(model: '"We Live In a Society"', make: "The Joker", year: 2017, price: 911, address: "232 Foote St, Templestowe")
car.user = salar
car.remote_photo_url = sal
car.save!
car = Car.new(model: "Yewt", make: "ACE", year: 2018, price: 95, address: "364 Manville Rd, Pleasantville, NY 10570")
car.user = lady
car.remote_photo_url = hills
car.save!
car = Car.new(model: "Scarab", make: "Stout", year: 1936, price: 435, address: "6925 Hollywood Blvd, Hollywood, CA 90028")
car.user = elle
car.remote_photo_url = ellen
car.save!
car = Car.new(model: "Ninja", make: "Kawasaki", year: 2016, price: 33, address: "Elliott Ave, Parkville VIC 3052")
car.user = ghost
car.remote_photo_url = bike
car.save!
car = Car.new(model: "Fuel Truck", make: "Dodge", year: 1939, price: 81, address: "1 Parliament Pl, East Melbourne VIC 3002")
car.user = pizza
car.remote_photo_url = fuel
car.save!

# land = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/landwind.jpg"
# wild = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/wildwacky.jpg"
# robin = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/ReliantRobin.jpg"
# dead = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331924/coroner.jpg"
# leno = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331926/leno_buick.jpg"
# sal = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331924/joker_truck.jpg"
# hills = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/badcar.jpg"
# ellen = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/stout.jpg"
# bike = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/stout.jpg"
# fuel = "https://res.cloudinary.com/dhbdevaoy/image/upload/v1542331925/Fuel_Truck.jpg"
