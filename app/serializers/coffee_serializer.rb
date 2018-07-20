class CoffeeSerializer < ActiveModel::Serializer
  attributes :id, :date, :roaster, :blend, :days_post_roast, :espresso, :rating, :favorite, :tasting_notes, :grams_in, :grams_out, :time, :temperature, :brew_ratio
end
