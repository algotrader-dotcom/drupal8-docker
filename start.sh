wget https://ftp.drupal.org/files/projects/drupal-8.2.1.tar.gz # Change your drupal download here
tar zxf drupal-8.2.1.tar.gz
ln -s drupal-8.2.1 www
rm -f drupal-8.2.1.tar.gz
cd www
mkdir sites/default/files
sudo chgrp -R 82 sites/default/files
sudo chmod -R 775 sites/default/files
cp sites/default/default.settings.php sites/default/settings.php
chmod 777 sites/default/settings.php
cd ..
docker-compose up --build

