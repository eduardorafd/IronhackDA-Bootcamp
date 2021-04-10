SELECT * FROM mytable;
-- Question 1
SELECT DISTINCT prime_genre FROM mytable;
-- Question 2
SELECT prime_genre, SUM(rating_count_tot) FROM mytable GROUP BY prime_genre LIMIT 1;
-- Question 3
SELECT COUNT(prime_genre), prime_genre FROM mytable  GROUP BY prime_genre LIMIT 1;
-- Question 4
SELECT COUNT(prime_genre), prime_genre FROM mytable  GROUP BY prime_genre ORDER BY COUNT(prime_genre) ASC LIMIT 1;
-- Question 5
SELECT track_name, rating_count_tot FROM mytable ORDER BY rating_count_tot DESC LIMIT 10;
-- Question 6 
SELECT track_name, user_rating FROM mytable ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 10;
-- Question 7, Questin 8 and Question 9
/*The table of question 5 shows that the social media apps are the most used because they have a lot of ratings. That does not mean they are rated with 5 stars but a lot of people use it.
About question 6, it shows that games have a better qualification but less users to judge it. Finally , the relation between these tables is that social medias app have lower qualification
than games but they have so much more users. So it is not 100% sure to say people love more games than social media because they have balance among the statistics.*/
-- Question 10
SELECT track_name, user_rating, rating_count_tot FROM mytable ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 3;
-- Question 11
SELECT track_name , price, rating_count_tot FROM mytable ORDER BY rating_count_tot DESC LIMIT 10;
SELECT track_name , price, rating_count_tot FROM mytable WHERE price > 0 ORDER BY rating_count_tot DESC LIMIT 10;
SELECT track_name, price, rating_count_tot FROM mytable  WHERE price = 0 ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 10;
SELECT track_name, price, rating_count_tot FROM mytable  WHERE price > 0 ORDER BY user_rating DESC, rating_count_tot DESC LIMIT 10;
SELECT free_or_paid, COUNT(free_or_paid) FROM (SELECT price, CASE WHEN price = 0 THEN 'free'ELSE 'paid'END AS free_or_paid FROM mytable) AS subq GROUP BY free_or_paid;
-- of course free apps are high qualified and used a lot by the users but it seems people do not care a lot about price because we have paid apps very used by them.
-- Bonus 1
SELECT prime_genre, COUNT(prime_genre) FROM mytable WHERE prime_genre = 'Games' and langnum > 1; 
-- Bonus 2
SELECT freepaid, COUNT(freepaid) FROM (SELECT track_name, CASE WHEN price = 0 THEN 'free app' ELSE 'paid app' END AS freepaid FROM mytable) AS subq GROUP BY freepaid;
-- Bonus 3
SELECT prime_genre, freepaid, COUNT(freepaid) AS counting FROM (SELECT prime_genre, track_name, CASE WHEN price = 0 THEN 'free app' ELSE 'paid app' END AS freepaid FROM mytable) AS subq
GROUP BY prime_genre, freepaid
ORDER BY prime_genre DESC;





   

