#!/bin/bash
# TOKEN="BAhJIiU5YzZlZGFkY2VkYjgwNzY1MGY3NTU3ZWE5NTE3M2ZkMwY6BkVG--cb3c88faa7d6abc460c0f709237df059657e3f50" sh scripts/auth/sign-out.sh
curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
