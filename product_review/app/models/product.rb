class Product < ActiveRecord::Base

  has_many :reviews
  has_many :users, through: :reviews
  attr_accessor :title
  self.inheritance_column = :_type_disabled


  def leave_review(user, star_rating, comment)
    reviews.create(user: user, star_rating: star_rating, comment: comment)
  end

  def print_all_reviews
    reviews.each do |review|
      puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
    end
  end

  def average_rating
    total_ratings = reviews.pluck(:star_rating)
    total_ratings.sum / total_ratings.length.to_f
  end

end

