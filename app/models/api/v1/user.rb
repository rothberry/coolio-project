class Api::V1::User < ApplicationRecord
  has_many :dogs
  has_secure_password
end