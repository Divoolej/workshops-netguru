# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

confirmation_date = Date.today

user1 = User.create! firstname: "Jean",
             lastname: "Renault",
             email: "jean.renault@tp.com",
             password: "password1",
             confirmed_at: confirmation_date

user2 = User.create! firstname: "Stanisław",
             lastname: "Wokulski",
             email: "ssww@gmial.com",
             password: "password2",
             confirmed_at: confirmation_date

user3 = User.create! firstname: "Sophie",
             lastname: "Zelmani",
             email: "sophie@zelmani.com",
             password: "password3",
             confirmed_at: confirmation_date

user4 = User.create! firstname: "Philip",
             lastname: "Glass",
             email: "email@example.org",
             password: "password4",
             confirmed_at: confirmation_date

user5 = User.create! firstname: "Dale",
             lastname: "Cooper",
             email: "coop@tp.net",
             password: "password5",
             confirmed_at: confirmation_date

admin = User.create! firstname: "The",
             lastname: "Admin",
             email: "admin@app.com",
             password: "rootpassword",
             confirmed_at: confirmation_date

category1 = Category.create! name: "Books"
category2 = Category.create! name: "Awesome Things"
category3 = Category.create! name: "Random Stuff"

product1 = Product.create! title: "Eloquent Ruby",
                           description: "It's easy to write correct Ruby code, but to gain the fluency needed to write 'great' Ruby code, you must go beyond syntax and absorb the 'Ruby way' of thinking and problem solving. In 'Eloquent Ruby', Russ Olsen helps you write Ruby like true Rubyists do - so you can leverage its immense, surprising power.",
                           price: 36.81,
                           category: category1,
                           user: admin

product2 = Product.create! title: "Everyday Rails Testing with RSpec",
                           description: "Practical advice for adding reliable tests to your Rails apps with RSpec.",
                           price: 17,
                           category: category1,
                           user: user1

product3 = Product.create! title: "Pizza",
                           description: "Yummy piece of food.",
                           price: 5,
                           category: category2,
                           user: admin

product4 = Product.create! title: "Ruby",
                           description: "We all love Ruby - and it's free!",
                           price: 0,
                           category: category2,
                           user: user1

product5 = Product.create! title: "Coffee",
                           description: "Damn fine. And hot!",
                           price: 2.50,
                           category: category2,
                           user: user2

product6 = Product.create! title: "Tea",
                           description: "Cause it's always five o'clock somewhere.",
                           price: 2.50,
                           category: category2,
                           user: user3

product7 = Product.create! title: "Space exploration",
                           description: "Space exploration is the ongoing discovery and exploration of celestial structures in outer space by means of continuously evolving and growing space technology. While the study of space is carried out mainly by astronomers with telescopes, the physical exploration of space is conducted both by unmanned robotic probes and human spaceflight.",
                           price: 999000.00,
                           category: category2,
                           user: user4

product8 = Product.create! title: "Toothpaste",
                           description: "Toothpaste is a paste or gel dentifrice used with a toothbrush as an accessory to clean and maintain the aesthetics and health of teeth.",
                           price: 1.24,
                           category: category3,
                           user: user5

product9 = Product.create! title: "Smoothie",
                           description: "A smoothie is a thick beverage made from blended raw fruit and/or vegetables, often with other ingredients such as water, ice, dairy products or sweeteners.",
                           price: 2.99,
                           category: category3,
                           user: admin

product10 = Product.create! title: "Refrigerator",
                           description: "A refrigerator (colloquially fridge) is a common household appliance that consists of a thermally insulated compartment and a heat pump (mechanical, electronic, or chemical) that transfers heat from the inside of the fridge to its external environment so that the inside of the fridge is cooled to a temperature below the ambient temperature of the room.",
                           price: 2455.90,
                           category: category3,
                           user: user2

product11 = Product.create! title: "Pencil",
                           description: "A pencil is a writing implement or art medium usually constructed of a narrow, solid pigment core inside a protective casing which prevents the core from being broken or leaving marks on the user’s hand during use.",
                           price: 0.44,
                           category: category3,
                           user: user2

review1 = Review.create! content: "Engaging.",
                         rating: 5,
                         product: product1,
                         user: user1
review2 = Review.create! content: "RSpec is great, this book is even better.",
                         rating: 5,
                         product: product2,
                         user: user2
review3 = Review.create! content: "A decent meal.",
                         rating: 4,
                         product: product3,
                         user: user3
review4 = Review.create! content: "What can I say - it's the best.",
                         rating: 5,
                         product: product4,
                         user: user4
review5 = Review.create! content: "Extraordinary.",
                         rating: 4,
                         product: product5,
                         user: admin
review6 = Review.create! content: "Damn fine.",
                         rating: 5,
                         product: product6,
                         user: user5
review7 = Review.create! content: "10/10",
                         rating: 5,
                         product: product7,
                         user: user1
review8 = Review.create! content: "Disgusting.",
                         rating: 1,
                         product: product8,
                         user: admin
review9 = Review.create! content: "Sweet and healthy!",
                         rating: 4,
                         product: product9,
                         user: user2
review10 = Review.create! content: "Too cold.",
                         rating: 2,
                         product: product10,
                         user: user3
review11 = Review.create! content: "Nice and sharp",
                         rating: 4,
                         product: product11,
                         user: user4
review12 = Review.create! content: "A good read.",
                         rating: 4,
                         product: product1,
                         user: user5
review13 = Review.create! content: "Engaging.",
                         rating: 5,
                         product: product2,
                         user: admin
review14 = Review.create! content: "I'm allergic to nuts.",
                         rating: 2,
                         product: product3,
                         user: user4
review15 = Review.create! content: "Ruby is all I need.",
                         rating: 5,
                         product: product4,
                         user: user2
review16 = Review.create! content: "Too bitter for me.",
                         rating: 3,
                         product: product5,
                         user: user3
review17 = Review.create! content: "Bananas!",
                         rating: 5,
                         product: product1,
                         user: user4
review18 = Review.create! content: "Meh",
                         rating: 3,
                         product: product2,
                         user: user5
review19 = Review.create! content: "Delicious!",
                         rating: 5,
                         product: product3,
                         user: user1
review20 = Review.create! content: "Best book I've read today.",
                         rating: 4,
                         product: product1,
                         user: user2