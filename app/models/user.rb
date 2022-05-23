class User < ApplicationRecord
  has_and_belongs_to_many :jars
  has_many :coins

  # has_secure_password
  # # def self.from_token_payload payload
  # #   payload['sub']
  # # end
end
