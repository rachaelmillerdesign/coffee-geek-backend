#!/bin/bash
# TOKEN="BAhJIiU5YzZlZGFkY2VkYjgwNzY1MGY3NTU3ZWE5NTE3M2ZkMwY6BkVG--cb3c88faa7d6abc460c0f709237df059657e3f50" OLDPW="123456" NEWPW="123" sh scripts/auth/change-password.sh
curl "http://localhost:4741/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
