FROM node:16.12.0

WORKDIR /app

RUN apt update -y && \
    apt install -y \
        git

RUN git clone https://github.com/ipfs/ipfs-webui.git .

RUN npm install
RUN npm install -g cross-env

CMD ["npm", "run", "start:darwin:linux"]
