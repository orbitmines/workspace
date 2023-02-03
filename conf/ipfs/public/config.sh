#!/bin/sh

# Allow webui CORS
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["http://public.ipfs.orbitmines.localhost", "http://private.ipfs.orbitmines.localhost", "http://orbitmines.localhost"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'
