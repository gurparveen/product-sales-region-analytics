-- Create Calculated Column

-- add column (Cost)

	ALTER TABLE ProductSalesRegion
	ADD Cost AS (UnitPrice * 0.6 * Quantity)

-- Create clean View

	
	CREATE VIEW vw_Profit AS
		SELECT 
		OrderID,
		UnitPrice,
		Quantity,
		(UnitPrice * Quantity) - (UnitPrice * Quantity * 0.6) - 	ShippingCost AS Profit
		From ProductSalesRegion

