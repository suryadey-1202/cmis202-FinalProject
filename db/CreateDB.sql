CREATE DATABASE trafficDb;

CREATE USER 'traffic_user'@'localhost' IDENTIFIED BY 'Mty764$UmIaP10a';
GRANT ALL PRIVILEGES ON trafficDb.* TO 'traffic_user'@'localhost';
FLUSH PRIVILEGES;




