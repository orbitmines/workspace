FROM ipfs/kubo:v0.17.0

# To be extra cautious, You can also set the LIBP2P_FORCE_PNET environment variable to 1 to force the usage of
# private networks. If no private network is configured, the daemon will fail to start.
ENV LIBP2P_FORCE_PNET=1

# To prevent your node from even trying to connect to the default bootstrap nodes, run:
RUN ipfs init
RUN ipfs bootstrap rm --all

# Allow-all CORS
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["GET", "POST"]'
RUN #ipfs config --json API.HTTPHeaders.Access-Control-Allow-Headers '["Authorization"]'
RUN #ipfs config --json API.HTTPHeaders.Access-Control-Expose-Headers '["Location"]'
RUN #ipfs config --json API.HTTPHeaders.Access-Control-Allow-Credentials '["true"]'

#WORKDIR /keygen
#
#RUN go get github.com/Kubuxu/go-ipfs-swarm-key-gen/ipfs-swarm-key-gen
#RUN ipfs-swarm-key-gen > $IPFS_PATH/swarm.key