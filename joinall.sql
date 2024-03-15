USE coursera_db;
SELECT customer.cust, inventory.quantity_on_hand, item.description, transaction.date_sold
FROM customer
JOIN transaction 
ON customer.cust = transaction.cust
JOIN item
ON item.num = transaction.item_num
JOIN inventory
ON inventory.item_num = item.num
WHERE customer.cust = '202900';
