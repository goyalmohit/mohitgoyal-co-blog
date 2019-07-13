# removes the previously installed docker binaries
sudo apt-get remove -y docker docker-engine docker.io containerd runc

# upgrade system repodata and binaries
sudo apt-get update
sudo apt-get upgrade

# allow apt to use a repository over HTTPS 
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# add docker's official GPG key and verify the same
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# add docker repo to the list of repos
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# update the apt index
sudo apt-get update

# installs docker on the local system
sudo apt-get install docker-ce docker-ce-cli containerd.io

# verify docker installed correctly by checking docker version
docker --version

# add current user to docker group
sudo usermod -aG docker {username}

# fetch and run docker image for hello-world
docker run hello-world