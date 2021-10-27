#!/bin/bash
echo "Updating your system as a precaution, please wait..."
sudo apt-get update
sudo apt-get upgrade
echo "Installing dependencies, please wait..."
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev
echo "Cloning repositories, please wait..."
git clone https://github.com/ShiningCrystal-Team/pokeemerald
git clone https://github.com/pret/agbcc
cd agbcc
echo "Compiling pokeemerald.gba, please wait..."
./build.sh
./install.sh ../pokeemerald
cd ..
cd pokeemerald
make compare
make
echo "Done! You should now have a complete copy of Jasmine, ready to be played."
echo "However, I must warn you: Please use an accurate emulator. mGBA is a great"
echo "choice that is extremely small and runs on the puniest of hardware. DO NOT"
echo "USE DELTA, VBA-M, NOCashGBA, OR ECLIPSE!"