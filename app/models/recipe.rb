class Recipe < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :ingredients
end
