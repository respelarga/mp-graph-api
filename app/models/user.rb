class User < ApplicationRecord
    has_secure_password

    validates :key, presence: true, format: { with:  /\A^[a-zA-Z0-9]{12}\z/, message: "must be a valid 12 alphanumeric key" }, uniqueness: true

end
