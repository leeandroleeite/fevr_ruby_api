class User < ApplicationRecord
    has_secure_password

    validates_presence_of :email, on: :create, message: "can't be blank"
    validates_uniqueness_of :email, on: :create, message: "already exists"

end
