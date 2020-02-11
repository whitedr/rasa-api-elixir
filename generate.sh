#!/bin/sh

openapi-generator generate \
  -g elixir \
  -i ./openapi/specs/rasa.yml \
  -o ./ \
  -t ./openapi/elixir \
  --additional-properties=invokerPackage=RasaApi
