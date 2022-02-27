-- https://dev.mysql.com/doc/refman/5.6/ja/account-management-sql.html
CREATE USER IF NOT EXISTS 'hoge'@'localhost';
GRANT SELECT,INSERT ON sample.* TO 'hoge'@'localhost';
REVOKE INSERT ON sample.* FROM 'hoge'@'localhost';

SHOW GRANTS FOR 'hoge'@'localhost';
