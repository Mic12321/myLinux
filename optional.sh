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

echo "many useful packages"
sudo apt install manpages -y
sudo apt install htop terminator build-essential -y
sudo apt install gdb git gitk gedit -y
sudo apt install apt-transport-https ca-certificates gnupg-agent software-properties-common -y
sudo apt install doxygen doxygen-gui -y
sudo apt install qtcreator qtbase5-examples qtbase5-doc-html qt5-quick-demos -y
sudo apt install clamav mosquitto mosquitto-clients -y
sudo apt install xxd net-tools meld make ssh-askpass -y
sudo apt install mpi-default-dev libtbb-dev -y
sudo apt install libcppunit-dev catch libclang-dev -y
sudo apt install gcc cmake cmake-gui cmake-curses-gui libssl-dev -y
sudo apt install qtbase5-private-dev qtdeclarative5-dev -y
sudo apt install sqlite3 sqlitebrowser libsqlite3-dev -y
sudo apt install xarchiver -y
sudo apt install libboost-all-dev libboost-test-dev -y
sudo apt install simplescreenrecorder -y
sudo apt install default-jdk -y
echo "many useful packages --- done"

echo "mqtt"
sudo rm -rf ~/repositories
mkdir -p ~/repositories
cd ~/repositories

git clone https://github.com/eclipse/paho.mqtt.c.git
git clone https://github.com/eclipse/paho.mqtt.cpp
git clone https://code.qt.io/qt/qtmqtt.git

cd paho.mqtt.c
cmake -Bbuild -H. -DPAHO_WITH_SSL=ON -DPAHO_ENABLE_TESTING=OFF
sudo cmake --build build/ --target install
sudo ldconfig

cd ~/repositories/paho.mqtt.cpp
cmake -Bbuild -H. -DPAHO_BUILD_DOCUMENTATION=TRUE -DPAHO_BUILD_SAMPLES=TRUE
sudo cmake --build build/ --target install

cd ~/repositories/qtmqtt
git checkout 5.12.8
mkdir build
cd build
qmake -r ..
make
sudo make install

cd
rm -rf repositories
sudo ldconfig
sudo updatedb

echo "mqtt --- done"

echo "Finish all processes from apt"
echo "Program end."
