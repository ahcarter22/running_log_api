#!/bin/bash

curl "http://localhost:8000/runs/${ID}/" \
  --include \
  --request DELETE \
  --header "Authorization: Token ${TOKEN}"

echo
