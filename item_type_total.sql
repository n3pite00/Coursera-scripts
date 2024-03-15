USE coursera_db;
SELECT item.item_type, SUM(transaction.quantity * transaction.price) AS total
FROM item
JOIN transaction ON transaction.item_num = item.num
GROUP BY item_type;