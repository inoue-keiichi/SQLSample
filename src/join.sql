-- https://qiita.com/ngron/items/db4947fb0551f21321c0
-- 特徴1. 右テーブルの行数に合わせて左テーブルの行数を複製する
-- 特徴2. 結合相手がいない行は結合結果から消滅する

SELECT *
FROM sample.Workers as w
JOIN sample.Orders as o
ON o.worker_id = w.id;
