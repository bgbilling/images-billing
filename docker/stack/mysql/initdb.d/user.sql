GRANT ALL PRIVILEGES ON bgbilling.* TO 'bill'@'localhost' IDENTIFIED BY 'bgbilling';
GRANT ALL PRIVILEGES ON bgbilling.* TO 'bill'@'%' IDENTIFIED BY 'bgbilling';
GRANT PROCESS, RELOAD ON *.* TO 'bill'@'localhost';
GRANT PROCESS, RELOAD ON *.* TO 'bill'@'%';