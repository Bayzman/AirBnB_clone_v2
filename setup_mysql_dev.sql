-- Creates a MySQL server with:
--   Database hbnb_dev_db.
--   User hbnb_dev with password hbnb_dev_pwd in localhost.
<<<<<<< HEAD
--   Grants all privileges for hbnb_dev on hbnb_dev_db.
--   Grants SELECT privilege for hbnb_dev on performance_schema.

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
=======
--   Grants all privileges for hbnb_test on hbnb_dev_db.
--   Grants SELECT privilege for hbnb_test on performance_schema.

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
USE hbnb_dev_db;
>>>>>>> 5997b5d0fb2d161dda9eee8f4023f382eefb54d4
CREATE USER
    IF NOT EXISTS 'hbnb_dev'@'localhost'
    IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES
<<<<<<< HEAD
   ON `hbnb_dev_db`.*
   TO 'hbnb_dev'@'localhost'
   IDENTIFIED BY 'hbnb_dev_pwd';
GRANT SELECT
   ON `performance_schema`.*
   TO 'hbnb_dev'@'localhost'
   IDENTIFIED BY 'hbnb_dev_pwd';
=======
   ON hbnb_test_db.*
   TO 'hbnb_dev'@'localhost';
GRANT SELECT
   ON performance_schema.*
   TO 'hbnb_dev'@'localhost';
GRANT SHOW DATABASES ON *.* TO 'hbnb_dev'@'localhost';

>>>>>>> 5997b5d0fb2d161dda9eee8f4023f382eefb54d4
FLUSH PRIVILEGES;
