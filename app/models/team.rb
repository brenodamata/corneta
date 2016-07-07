class Team < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :users
  has_many :posts

end
