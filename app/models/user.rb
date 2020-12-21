class User < ActiveRecord::Base
    validates :username, presence: true
    validates :username, uniqueness: { case_sensitive: false, message: "has already been taken. Please choose a unique username" }
    has_secure_password
    has_many :patients
end