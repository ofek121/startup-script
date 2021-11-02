# update all
echo "###################################################################"
echo "##########################update all###############################"
echo "###################################################################"
apt-get update && apt-get update && apt update && apt upgrade
echo "###################################################################"
echo "######################done update all###############################"
echo "###################################################################"

# install git
echo "###################################################################"
echo "##########################install git##############################"
echo "###################################################################"
apt install git-all
echo "###################################################################"
echo "##################done to install git##############################"
echo "###################################################################"


# kubectl install
echo "###################################################################"
echo "##########################install kubectl##########################"
echo "###################################################################"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
echo "###################################################################"
echo "##################done to install kubectl##########################"
echo "###################################################################"

# install AZ
echo "###################################################################"
echo "##########################install AZ##########################"
echo "###################################################################"
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
echo "###################################################################"
echo "##################done to install AZ ##########################"
echo "###################################################################"


# install AZ
echo "###################################################################"
echo "##########################install snapd##########################"
echo "###################################################################"
sudo apt install snapd
echo "###################################################################"
echo "##################done to install snapd ##########################"
echo "###################################################################"



# install vs code
echo "###################################################################"
echo "##########################install snapd##########################"
echo "###################################################################"
sudo snap install code --classic
echo "###################################################################"
echo "##################done to install snapd ##########################"
echo "###################################################################"

# install zsh
echo "###################################################################"
echo "##########################install snapd##########################"
echo "###################################################################"
sudo apt-get install zsh
echo "###################################################################"
echo "##################done to install snapd ##########################"
echo "###################################################################"


# install Oh-My-Zsh
echo "###################################################################"
echo "##########################install snapd##########################"
echo "###################################################################"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "###################################################################"
echo "##################done to install snapd ##########################"
echo "###################################################################"

# copy config files to home dir
echo "###################################################################"
echo "############copy config files to home dir##########################"
echo "###################################################################"
cp -r ./home/* ~/
echo "###################################################################"
echo "###########done copy config files to home dir######################"
echo "###################################################################"

