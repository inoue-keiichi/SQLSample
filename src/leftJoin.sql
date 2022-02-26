-- https://qiita.com/ngron/items/db4947fb0551f21321c0
-- 特徴1. 左の行は強制的に全て表示し、右テーブルには全ての値がNULLである行を生成して結合する

SELECT *
FROM sample.Workers as w
LEFT JOIN sample.Orders as o
ON o.worker_id = w.id;
