/* Find a list of order IDs where either gloss_qty or poster_qty is greater than 4000. 
Only include the id field in the resulting table. */
SELECT id
FROM public.orders
WHERE glossqty > 4000 or posterqty > 4000

/* Write a query that returns a list of orders where the standard_qty is zero and either
the gloss_qty or poster_qty is over 1000. */
SELECT * 
FROM public.orders
WHERE standardqty = 0 
AND (glossqty > 1000 OR posterqty > 1000)

/* Find all the company names that start with a 'C' or 'W', and where the primary contact 
contains 'ana' or 'Ana', but does not contain 'eana'. */
SELECT name, primarypoc
FROM public.accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
AND (primarypoc LIKE '%ana%' OR primarypoc LIKE '%ANA%') 
AND primarypoc NOT LIKE '%eana%'

/* Provide a table that shows the region for each sales 
rep along with their associated accounts. Your final table should include three columns: 
the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) by account name. */
SELECT r.name region, s.name sales_rep, a.name account_name
FROM sales_reps s
JOIN region r
ON s.regionid = r.id
JOIN accounts a
ON s.id = a.salesrepid
ORDER BY account_name 



