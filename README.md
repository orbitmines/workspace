### TODO
- Socials: [NPM](https://www.npmjs.com/org/orbitmines)

### Endpoints

| Local Name        | Endpoint                                      |
|-------------------|-----------------------------------------------|
| `orbitmines.com`  | http://orbitmines.localhost                   |
| NPM Registry      | http://npm.orbitmines.localhost               |
| Gitlab Instance   | http://gitlab.orbitmines.localhost            |
| Private IPFS Node | http://private.ipfs.orbitmines.localhost      |
| Public IPFS Node  | http://public.ipfs.orbitmines.localhost/webui |

---

### Prerequisits
- NPM
- Docker

### Initial setup

- Setup NPM package registries
  ```shell
  npm set registry http://npm.orbitmines.localhost
  #yarn config set registry http://npm.orbitmines.localhost
  ```

- Create an IPFS `swarm.key`, for the local private IPFS node. (TODO: When setting up a connected private network, this will have to be shared. Perhaps one for the actual local machine, the other for a private network)
  ```shell
  go get github.com/Kubuxu/go-ipfs-swarm-key-gen/ipfs-swarm-key-gen
  ipfs-swarm-key-gen > ./conf/ipfs/private/swarm.key
  ```

- Start & build Docker containers
  ```shell
  docker compose up
  ```

- Create user for local NPM registry
  ```shell
  npm adduser --registry http://npm.orbitmines.localhost
  ```

- Setup local Gitlab
    - Go to [http://gitlab.orbitmines.localhost](http://gitlab.orbitmines.localhost), sign in with:
        - username: `root`
        - password: Found at `./.orbitmines/git/gitlab/config/initial_root_password`

    - Make a non-root account for yourself to use, and login with that.


