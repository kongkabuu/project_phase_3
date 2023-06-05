           +--------------+
           |   Product    |
           +--------------+
           | - id         |
           | - name       |
           +--------------+
                 ^
                 |
           +--------------+
           |    Review    |
           +--------------+
           | - id         |
           | - content    |
           | - user_id    |
           | - product_id |
           +--------------+
                 ^
                 |
           +--------------+
           |     User     |
           +--------------+
           | - id         |
           | - name       |
           +--------------+


           Classes and Methods

Product
The Product class represents a product in the system. It has the following methods:

leave_review(user, star_rating, comment): Creates a new review associated with the product and the specified user.
print_all_reviews: Prints details of all the reviews associated with the product.
average_rating: Returns the average star rating for all the reviews of the product.
User
The User class represents a user in the system. It has the following methods:

favorite_product: Returns the product with the highest star rating from the user's reviews.
remove_reviews(product): Removes all reviews given by the user for the specified product.
Review
The Review class represents a review left by a user for a product. It has the following associations:

belongs_to :product: Specifies the product that the review is associated with.
belongs_to :user: Specifies the user who left the review.
