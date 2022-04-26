class User < ApplicationRecord

    has_many :pantries, class_name: "pantry", foreign_key: "user_id"
end
