require 'faker'

50.times do
  user = User.create(
    name: Faker::Name.name
  )
end

product = Product.create(
  title: Faker::Commerce.product_name,
  type: Faker::Commerce.department,
  price: rand(0..60)
)

rand(1..5).times do
  Review.create(
    star_rating: rand(1..5),
    comment: Faker::Lorem.sentence,
    product_id: product.id,
    user_id: User.first.id
  )
end
