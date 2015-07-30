# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# faker gem

include Faker
=begin
Article.destroy_all

is_published = [true, false]
100.times do
	article = Article.create(article_title: Company.bs.titleize,
	                         article_author: Name.name,
	                         article_published: Time.at(rand * Time.now.to_i),
	                         article_published?: is_published[rand(0..1)],
	                         content: Hacker.phrases.join(" "),
	                         article_avatar: Avatar.image(nil, '100x100')
	)
	puts article.inspect
end
=end

Product.destroy_all
100.times do
	product = Product.create(name: Commerce.product_name.titleize,
	                         description: Hacker.phrases.join(" "),
	                         quantity_on_hand: Number.digit,
	                         selling_price: Commerce.price,
	                         product_cost: Commerce.price,
	                         shipping_weight: Number.digit,
	                         img_th: "http://lorempixel.com/200/150/food?#{rand(1..1000)}",
	                         image_full: "http://lorempixel.com/450/300/food?#{rand(1..1000)}"
	)
	product.save!

	(rand(1..10)).times do
		product.comments.create(author: Name.name.titleize,
		                        opinion: Lorem.paragraphs(3).join("<br>").html_safe,
		                        rating: rand(1..10)

		)
	end
	puts product.inspect


end






