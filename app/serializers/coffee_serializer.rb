class CoffeeSerializer < ActiveModel::Serializer
  attributes :id, :roaster, :blend, :favorite, :rating, :days_post_roast, :espresso
end
