#!/bin/bash

curl "http://localhost:4741/tastings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tasting": {
      "user": "'"${USER}"'",
      "date": "'"${DATE}"'",
      "roaster": "'"${ROASTER}"'",
      "blend": "'"${BLEND}"'",
      "days_post_roast": "'"${DAYS_POST_ROAST}"'",
      "espresso": "'"${ESPRESSO}"'",
      "rating": "'"${RATING}"'",
      "favorite": "'"${FAVORITE}"'",
      "tasting_notes": "'"${DATE}"'",
      "grams_in": "'"${GRAMS_IN}"'",
      "grams_out": "'"${GRAMS_OUT}"'",
      "time": "'"${TIME}"'",
      "temperature": "'"${TEMPERATURE}"'",
      "brew_ratio": "'"${BREW_RATIO}"'",
      "extraction_notes": "'"${EXTRACTION_NOTES}"'",
    }
  }'

echo
# t.string :user
# t.string :date
# t.string :roaster
# t.string :blend
# t.integer :days_post_roast
# t.boolean :espresso
# t.integer :rating
# t.boolean :favorite
# t.string :tasting_notes
# t.integer :grams_in
# t.integer :grams_out
# t.time :time
# t.integer :temperature
# t.integer :brew_ratio
# t.string :extraction_notes
