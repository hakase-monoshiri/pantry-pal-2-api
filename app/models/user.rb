class User < ApplicationRecord

    has_many :pantries

    validates :email, :uniqueness => true
    validates_with EmailValidator
end
