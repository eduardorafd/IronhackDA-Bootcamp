-- Step 1 
SELECT titleauthor.au_id
, sales.title_id
, titles.advance * titleauthor.royaltyper / 100 AS advance
, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100
AS sales_royalty
FROM sales 
INNER JOIN titles ON sales.title_id = titles.title_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id;

-- Step 2 
SELECT au_id
, title_id
, SUM(sales_royalty)
, advance
 FROM (SELECT titleauthor.au_id
, sales.title_id
, titles.advance * titleauthor.royaltyper / 100 AS advance
, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100
AS sales_royalty
FROM sales 
INNER JOIN titles ON sales.title_id = titles.title_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id) AS subq
GROUP BY au_id, title_id, advance;

-- Step 3 

SELECT au_id, SUM(advance + sum_sales_royalty) AS Profits FROM (SELECT au_id
, title_id
, SUM(sales_royalty) AS sum_sales_royalty
, advance
 FROM (SELECT titleauthor.au_id
, sales.title_id
, titles.advance * titleauthor.royaltyper / 100 AS advance
, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM sales 
INNER JOIN titles ON sales.title_id = titles.title_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id) AS subq
GROUP BY au_id, title_id, advance) AS subqt
GROUP BY au_id
ORDER BY Profits DESC LIMIT 3;

CREATE TABLE results AS SELECT * FROM ( SELECT au_id, SUM(advance + sum_sales_royalty) AS Profits FROM (SELECT au_id
, title_id
, SUM(sales_royalty) AS sum_sales_royalty
, advance
 FROM (SELECT titleauthor.au_id
, sales.title_id
, titles.advance * titleauthor.royaltyper / 100 AS advance
, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS sales_royalty
FROM sales 
INNER JOIN titles ON sales.title_id = titles.title_id
INNER JOIN titleauthor ON titles.title_id = titleauthor.title_id) AS subq
GROUP BY au_id, title_id, advance) AS subqt
GROUP BY au_id
ORDER BY Profits DESC LIMIT 3) AS subq3;

SELECT * FROM results;




























