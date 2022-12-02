#packages for develop environment

echo "running develop_env.sh"
echo "Please enter your superuser password to continue"

sudo echo "upating and upgrading packages from apt"
sudo apt update
sudo apt upgrade -y
echo "Finish updating and upgrading"

echo "Downloading and installing packages from apt"
sudo apt intall gcc -y
sudo apt install doxygen -y
sudo apt install sqlite3 sqlitebrowser -y
