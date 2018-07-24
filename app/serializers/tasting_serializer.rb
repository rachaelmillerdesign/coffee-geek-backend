class TastingSerializer < ActiveModel::Serializer
  attributes :id, :user, :date, :roaster, :blend, :days_post_roast, :espresso, :rating, :favorite, :tasting_notes, :grams_in, :grams_out, :time, :temperature, :brew_ratio, :extraction_notes
end
