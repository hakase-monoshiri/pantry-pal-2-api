class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,

         :jwt_authenticatable,  :omniauthable, jwt_revocation_strategy: JwtDenylist,

         omniauth_providers: [:google_oauth2]
        
    has_many :pantries
    has_many :ingredients, through: :pantries

    validates :email, :uniqueness => true
    validates_with EmailValidator

    def self.from_omniauth(auth)
      
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|

        password = Devise.friendly_token[0, 20]

        user.email = auth.info.email
        user.password = password
        user.password_digest = password
        user.name = auth.info.name   
        user.image = auth.info.image
        puts user
      end
    end

end
