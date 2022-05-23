class Coin < ApplicationRecord
  belongs_to :user
  belongs_to :jar
end
