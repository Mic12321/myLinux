#packages for mainly use

echo "Running main.sh"
echo "Please enter your superuser password to continue"

sudo echo "upating and upgrading packages from apt"
sudo apt update
sudo apt upgrade -y
echo "Finish updating and upgrading"

echo "Downloading and installing packages from apt"

sudo apt install git-all
sudo apt-get install gparted -y
sudo apt install kate -y
sudo apt install htop -y
sudo apt install dpkg -y
sudo apt install tree
echo "Finish all processes from apt"

echo "Updating softwares from snap"
sudo snap refresh
echo "Finish updating"

echo "Downloading and installing softwares from snap"
sudo snap install signal-desktop
sudo snap install code
echo "Finish all processes from snap"


echo "Program end. The following applications are required to install mannually."
echo ".deb files: discord, teams, steam, docker-desktop"

