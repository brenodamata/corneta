class Match < ActiveRecord::Base
  belongs_to :host, class_name: "Team"
  belongs_to :visitor, class_name: "Team"
  belongs_to :round
  belongs_to :league
end