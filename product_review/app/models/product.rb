class Product < ActiveRecord::Base

  has_many :reviews
  has_many :users, through: :reviews
  attr_accessor :title
  self.inheritance_column = :_type_disabled

end

