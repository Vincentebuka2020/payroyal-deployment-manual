# 🚀 PayRoyal Deployment with Docker

This project shows how I deployed a WordPress website for PayRoyal using Docker and MySQL on an AWS virtual machine.

---

## 🖼️ Screenshots

**1. AWS Virtual Machine Creation**
![VM](images/PayroyalVM.png)

**2. DNS Propagation Check**
![DNS](images/DNSchecker.png)

**3. Running Docker Containers**
![Docker](images/container.png)

**4. Final Website**
![Website](images/payroyal.png)

---

## 🛠️ Tech Stack

- AWS EC2
- Docker & Docker Compose
- MySQL
- WordPress
- Namecheap DNS
- MobaXTerm (for SSH)

---

## 🧱 Folder Structure

├── README.md
├── images/
├── mysql/
│ ├── config/
│ └── initdb/


---

## 📂 MySQL Configuration

Cat <<EOF > mysqld.cnf
[mysqld]
user = mysql
port = 3306
datadir = /var/lib/mysql
bind-address = 0.0.0.0
mysqlx-bind-address = 0.0.0.0

key_buffer_size = 16M
myisam-recover-options = BACKUP

general_log_file = /var/log/mysql/query.log
general_log = 1
log_error = /var/log/mysql/error.log

max_binlog_size = 100M
EOF

 # creation of Startup file (mysql/initdb/)

cat <<EOF > initdb/grant-all.sql
CREATE USER 'vincent2020'@'%' IDENTIFIED BY 'vincent@2020';
GRANT ALL PRIVILEGES ON *.* TO 'vincent2020'@'%' WITH GRANT OPTION;

CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress@123';
GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'%' WITH GRANT OPTION;

CREATE DATABASE wordpressdb;

FLUSH PRIVILEGES;
EOF

🌐 Website
Visit: http://paybills.payroyal.online:8081
