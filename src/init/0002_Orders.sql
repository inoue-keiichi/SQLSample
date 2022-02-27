DROP TABLE IF EXISTS sample.Orders;
CREATE TABLE sample.Orders
(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    item_code VARCHAR(63) NOT NULL,
    worker_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_worker_id
		FOREIGN KEY (worker_id)
        REFERENCES sample.Workers(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO sample.Orders (item_code,worker_id)
VALUES 
	('A0001',1),
    ('A0002',1),
    ('B0001',4),
    ('D0001',5);
