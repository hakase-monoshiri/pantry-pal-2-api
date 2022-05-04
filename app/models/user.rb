class User < ApplicationRecord

    has_many :pantries

    validates :email, presence: :true
end
