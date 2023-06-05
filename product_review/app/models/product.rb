Class Product < ActiveRecord::Base
has_many :review
has_many :user, through: :review
end
