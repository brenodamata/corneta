class Team < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :users
  has_many :posts
  has_many :competitors
  has_many :leagues, through: :competitors
  has_many :host, class_name: "Match", foreign_key: "host_id"
  has_many :visitor, class_name: "Match", foreign_key: "visitor_id"
end
