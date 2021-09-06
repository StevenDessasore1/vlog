class User < ActiveRecord::Base
    has_many :vlogs
    validates :email, :password, presence: true
    has_secure_password
end
