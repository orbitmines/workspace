#!/bin/sh

# Allow webui CORS
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["http://private.ipfs.orbitmines.localhost", "http://orbitmines.localhost"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'
