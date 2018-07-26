class User < ApplicationRecord
  include Authentication
  has_many :tastings
  has_many :coffees, through: :tastings
end
