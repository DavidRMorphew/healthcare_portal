class User < ActiveRecord::Base
    validates :username, presence: true
    validates :username, uniqueness: { message: "has already been taken. Please choose a unique username"} # Check up on how these macros work
    has_secure_password
    has_many :patients
end