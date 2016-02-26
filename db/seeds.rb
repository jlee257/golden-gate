# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


watch1 = Product.create!(title: 'Apple iWatch 14k Gold',
	description: 'Gold plated Apple iWatch. 14K gold.',
	price: 799.0,
	category: 'iwatch',
	name: 'watch_gold_14k',
	rating: 4.2,
	rating_count: 5)
watch2 = Product.create!(title: 'Apple iWatch 14k Rose Gold',
	description: 'Gold plated Apple iWatch 14K gold color: rose.',
	price: 899.0,
	category: 'iwatch',
	name: 'watch_rosegold_14k',
	rating: 3.1,
	rating_count: 7)
Product.create!(title: 'Apple iPhone 6 14k Gold',
	description: 'Gold plated Apple iPhone 6. 14k gold',
	price: 1299.0,
	category: 'iphone',
	name: 'phone_gold_14k',
	rating: 4.2,
	rating_count: 5)

Order.create!(email: 'hello@hi.edu', product_id: 1, address: '2338 Telegraph Ave. #506, Berkeley, CA 94704', quantity: 2)
Order.create!(email: 'bye@hi.edu', product_id: 2, address: '2605 Durant Ave., Berkeley, CA 94704', quantity: 1)

Comment.create!(ip_address: '128.128.128.128', name: 'hello', product: watch1, description: 'This product is great!', rating: 5)
Comment.create!(ip_address: '129.129.129.129', name: 'bye', product: watch2, description: 'Not so great item', rating: 3)
Comment.create!(ip_address: '130.130.130.130', name: 'someone', product: watch2, description: '', rating: 4)

Report.create!(ip_address: '140.140.140.140', email: 'bye@hi.edu', description: 'I want to return my product.')