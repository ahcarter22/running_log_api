#!/bin/bash

curl "http://localhost:8000/runs/${ID}/" \
  --include \
  --request PATCH \
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
