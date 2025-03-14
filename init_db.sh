#!/bin/bash
set -e

mysql -u root -proot_password <<EOF
CREATE DATABASE IF NOT EXISTS chatbot_db;
USE chatbot_db;
CREATE TABLE IF NOT EXISTS chat_response (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(500) UNIQUE NOT NULL,
    answer TEXT NOT NULL
);
EOF