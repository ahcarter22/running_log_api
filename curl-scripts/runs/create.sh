#!/bin/bash

curl "http://localhost:8000/runs/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "run": {
      "distance": "'"${DISTANCE}"'",
      "difficult": "'"${DIFFICULT}"'",
      "shoe": "'"${SHOE}"'"
    }
  }'

echo
