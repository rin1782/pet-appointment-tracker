class User < ApplicationRecord
    has_many :pets

    validates :username, uniqueness: true
    has_secure_password
end
