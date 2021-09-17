#!/bin/bash

curl "http://localhost:8000/runs/${ID}/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
