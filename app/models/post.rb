class Post < ActiveRecord::Base
  belongs_to :team
  belongs_to :admin_user
end
