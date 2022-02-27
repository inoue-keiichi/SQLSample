-- https://zawatech.com/?p=127
-- MySQL はデフォルトで AutoCommit が有効
-- ROLLBACK できるコマンド
-- INSERT INTO
-- UPDATE
-- DELETE

BEGIN;
INSERT INTO sample.Workers (name)
VALUES ('Okada');
ROLLBACK;

SELECT * FROM sample.Workers;
