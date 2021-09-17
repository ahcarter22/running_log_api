#!/bin/bash

curl "http://localhost:8000/runs/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
