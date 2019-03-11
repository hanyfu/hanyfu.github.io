echo Removing Old Compressed Packages File
rm -r Packages
rm -r Packages.bz2
rm -r Packages.gz



echo Creating New Packages file
dpkg-scanpackages ./debs >Packages
bzip2 -fks Packages

echo Compressing New Packages List
gzip -c Packages > Packages.gz
