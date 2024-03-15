USE coursera_db;
SELECT item.num, item.description, transaction.quantity, transaction.date_sold
FROM item
JOIN transaction ON item.num = transaction.item_num
WHERE transaction.cust = '198765';