50.times do
  user = User.create(
    name: Faker::Name.name
  )
end

# Create a product with random data
product = Product.create(
  title: Faker::Product.name,
  genre: Faker::Product.type,
  price: rand(0..60) # random number between 0 and 60
)

# Create between 1 and 5 reviews for the product
rand(1..5).times do
  Review.create(
    star_rating: rand(1..5),
    comment: Faker::Lorem.sentence,
    product_id: product.id,
    user_id: user.id
  )
end

