class User < ApplicationRecord

    has_many :pantries

    validates :email, presence: :true, :uniqueness => true
    validates_with EmailValidator
end
