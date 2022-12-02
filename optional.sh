#optional packages

echo "running optional.sh"
echo "Please enter your superuser password to continue"

sudo echo "upating and upgrading packages from apt"
sudo apt update
sudo apt upgrade -y
echo "Finish updating and upgrading"

echo "Downloading and installing packages from apt"
sudo apt install gnome-shell-extensions -y
echo "Finish all processes from apt"
echo "Program end."
