class Ingredient < ActiveRecord::Base
  attr_accessible :name

  validates_uniqueness_of :name, :case_sensitive => false

  #before_validate :normalize_name

end
