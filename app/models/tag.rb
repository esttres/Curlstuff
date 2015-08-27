class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :gnotes, through: :taggings


end
