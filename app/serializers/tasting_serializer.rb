class TastingSerializer < ActiveModel::Serializer
  attributes :date, :tasting_notes, :grams_in, :grams_out, :time, :temperature, :extraction_notes
  belongs_to :coffee
end
