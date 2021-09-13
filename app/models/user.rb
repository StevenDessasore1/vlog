# frozen_string_literal: true

class User < ActiveRecord::Base
  has_many :vlogs
  validates :email, :password, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
