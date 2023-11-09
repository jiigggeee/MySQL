create trigger purchaseUpdateInventory
 after insert on customer_purchases
 for each row
	update inventory
     -- subtracts an item for each purchase
     set number_in_stock = 
     number_in_stock - 1
     where inventory_id = new.inventory_id;