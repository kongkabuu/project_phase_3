Class User < ActiveRecord::Base
has_many :review
has_many :product, through: :review
end
