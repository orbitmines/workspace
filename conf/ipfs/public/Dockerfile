FROM ipfs/kubo:v0.18.0-rc1

RUN ipfs init

#TODO: setup the resource manager

# Remove custom params
ipfs config --json Swarm.ResourceMgr '{}'

# Set inbound connection limits to a custom value
ipfs config --json Swarm.ResourceMgr.Limits.System.ConnsInbound 1000

# You might want to change also the number of inbound streams
ipfs config --json Swarm.ResourceMgr.Limits.System.StreamsInbound 1000

# If your hardware configuration is able to handle more connections
# and you are hitting Transient limits, you can also change them:
ipfs config --json Swarm.ResourceMgr.Limits.Transient.ConnsInbound 1000
ipfs config --json Swarm.ResourceMgr.Limits.Transient.StreamsInbound 1000


# Allow webui CORS
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["http://public.ipfs.orbitmines.localhost"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["POST"]'