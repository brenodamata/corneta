class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :validatable, :timeoutable, :rememberable and :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :omniauthable, omniauth_providers: [:twitter]

  belongs_to :team
  has_one :identity

  def twitter
    identities.where( :provider => "twitter" ).first
  end

  def twitter_client
    @twitter_client ||= Twitter.client( access_token: twitter.accesstoken )
  end

  def handle
    identity.nickname
  end
end
