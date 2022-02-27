SELECT w.id, w.name
FROM sample.Workers AS w
WHERE EXISTS (
    SELECT * FROM sample.Orders as o
    WHERE o.worker_id = w.id
)