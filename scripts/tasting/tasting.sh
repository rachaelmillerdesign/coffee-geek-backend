#!/bin/bash
# TOKEN="BAhJIiU5YzZlZGFkY2VkYjgwNzY1MGY3NTU3ZWE5NTE3M2ZkMwY6BkVG--cb3c88faa7d6abc460c0f709237df059657e3f50" USER="R@R" DATE="6/6/18" ROASTER="49th parallel" BLEND="Old School" DAYS_POST_ROAST=0 ESPRESSO=true RATING=6 FAVORITE=false  TASTING_NOTES="Cherry, sweet, dark chocolate, no cocoa; just not my cup of tea" GRAMS_IN=18.5  GRAMS_OUT=35 TIME=30 TEMPERATURE=200 BREW_RATIO=1.9 	EXTRACTION_NOTES="nil" sh scripts/tasting/tasting.sh
curl "http://localhost:4741/tastings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data "{
    "tasting": {
      "user": "'"${USER}"'"
      "date": "'"${DATE}"'"
      "roaster": "'"${ROASTER}"'"
      "blend": "'"${BLEND}"'"
      "days_post_roast": "'"${DAYS_POST_ROAST}"'"
      "espresso": "'"${ESPRESSO}"'"
      "rating": "'"${RATING}"'"
      "favorite": "'"${FAVORITE}"'"
      "tasting_notes": "'"${DATE}"'"
      "grams_in": "'"${GRAMS_IN}"'"
      "grams_out": "'"${GRAMS_OUT}"'"
      "time": "'"${TIME}"'"
      "temperature": "'"${TEMPERATURE}"'"
      "brew_ratio": "'"${BREW_RATIO}"'"
      "extraction_notes": "'"${EXTRACTION_NOTES}"'"
    }
  }"

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
