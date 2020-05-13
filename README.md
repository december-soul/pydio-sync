# pydio-sync
docker file to work with pydio-sync

# build docker
 docker build -t pydio-sync .

# run docker
 docker run -v `pwd`:/root/.local/share -p 5556:5556 -it pydio-sync

# use
 open the url http://localhost:5556
 default username and passwort are "test"
 after usage the synced files are at the current folder
