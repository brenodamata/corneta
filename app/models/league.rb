class League < ActiveRecord::Base
  has_many :matches
  has_many :rounds
  has_many :competitors
  has_many :teams, through: :competitors
end
