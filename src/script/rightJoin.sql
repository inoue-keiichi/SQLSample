-- https://qiita.com/ngron/items/db4947fb0551f21321c0
-- 特徴1. 右の行は強制的に全て表示し、左テーブルには全ての値がNULLである行を生成して結合する

SELECT *
FROM sample.Orders as o
RIGHT JOIN sample.Workers as w
ON o.worker_id = w.id;
