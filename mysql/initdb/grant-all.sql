cat <<EOF > initdb/grant-all.sql
CREATE USER 'vincent2020'@'%' IDENTIFIED BY 'vincent@2020';
GRANT ALL PRIVILEGES ON *.* TO 'vincent2020'@'%' WITH GRANT OPTION;

CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress@123';
GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'%' WITH GRANT OPTION;

CREATE DATABASE wordpressdb;

FLUSH PRIVILEGES;
EOF
