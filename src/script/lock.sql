-- https://dev.mysql.com/doc/refman/5.6/ja/lock-tables.html
BEGIN;
-- WRITE は占有ロック。READ は共有ロック。
LOCK TABLE sample.Workers WRITE;
INSERT INTO sample.Workers (name)
VALUES ('Okada');
COMMIT;

-- https://dev.mysql.com/doc/refman/5.6/ja/innodb-locking-reads.html
BEGIN;
SELECT * FROM sample.Workers
	WHERE id < 7
		-- FOR UPDATE は占有ロック。LOCK IN SHARE MODE は共有ロック。
		LOCK IN SHARE MODE;
INSERT INTO sample.Workers (name)
VALUES ('Okada');
COMMIT;

SELECT * FROM sample.Workers;
