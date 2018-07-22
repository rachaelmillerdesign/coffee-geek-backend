class User < ApplicationRecord
  include Authentication
  has_many :tastings
end
