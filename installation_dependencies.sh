######### SAMTOOLS dependencies
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe" 
sudo apt-get update
sudo apt-get install libncurses5-dev
sudo apt-get install libbz2-dev

######### SAMTOOLS installation
#Download at https://sourceforge.net/projects/samtools/files/samtools/1.4.1/
./configure
make
sudo make install
