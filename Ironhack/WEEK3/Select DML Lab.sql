SELECT au_id, au_lname, au_fname FROM authors;
SELECT title FROM titles;
SELECT pub_name FROM publishers;
-- Challenge 1
SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id 
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id;
-- Challenge 2 
SELECT authors.au_id, authors.au_lname, authors.au_fname, titles.title, publishers.pub_name, COUNT(*) AS title_count FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id 
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY au_fname, au_id, au_lname, pub_name 
ORDER BY title_count DESC;
-- Challenge 3 
SELECT authors.au_id, authors.au_lname, authors.au_fname, SUM(sales.qty) AS total FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id 
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN sales ON titles.title_id = sales.title_id
GROUP BY authors.au_id,
         authors.au_lname,
		 authors.au_fname
ORDER BY total DESC LIMIT 3;
-- Challenge 4 
SELECT authors.au_id, authors.au_lname, authors.au_fname, COALESCE(SUM(sales.qty), 0) AS total FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id 
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
GROUP BY authors.au_id,
         authors.au_lname,
		 authors.au_fname
ORDER BY total DESC;