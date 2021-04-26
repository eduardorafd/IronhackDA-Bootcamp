![fifa](https://th.bing.com/th/id/OIP.V1CJ1TDHvVMh_z5Ur2YwUwHaEK?pid=ImgDet&rs=1)![fifa](https://th.bing.com/th/id/OIP.UxkjfOizXWrSmRVmifqSLAHaEK?pid=ImgDet&rs=1)  

## Data Vizualization Project 
Welcome to another project from the Ironhack's Data Analytics bootcamp. I am going to present the Data Vizualization Project which covered the topics from the fourth week of the
course where i learnt skills about web scrapping, API's, scrapping from selenium, data pipelines, multiprocessing and parallelization. The main idea of this project was to gather 
data from the internet and make a vizualization for it so we could present our point of views to a client. How i love sports and find it interesting to link with data analysis i
decided to get information from the website [Fifa Dataset](https://sofifa.com/players). All information is made by the soccer game "FIFA" which one gathers a lot of statistical 
information about the players and the teams. The client with the whole dataset could decide to make a contract with a specific player by seeing his stats. That's why i can relate
these themes because analyse data can help you to make clever decisions how it was represented in the movie [Moneyball (Film)](https://en.wikipedia.org/wiki/Moneyball_(film)) where
its showed the relevance of to make data analysis in the sport.
### Step 1 - Libraries and Thoughts
I started off importing some libraries that should help me to do all the work to get the data and turn it into a ready csv file to be vizualized properly. I imported beautifulsoup,
requests and json to get the contents and make the soup from the website. Also, i selected ConfigManager so i could get more players from the pages because my computer was limiting 
the number of output, i imported Pandas as well to create the tables and i imported the tqdm to analyse how good my machine was doing to do the web scrapping. It was easily to extract 
data because i found a pattern from the url's that helped me to loop through the pages. So i just needed to decide what and how many information i should bring to my dataset and make
the vizualization.
### Step 2 - Data information
How the table from the website was showing stats about players and teams by the statistics i made my csv file like the layout from the pages. I made the scrapping grouping by positions 
because the main content had the best players from the game so it will not get a lot of players by but just the best ones mixed. I separated it and then i got more data such as 875 goalkeppers
and 1200 defenders. And i got players that could have any stats so it would give many possibilities to the client to decide which player he could pick up. I created empty lists to represent 
each category like names , teams , values , ball control , overall and so on that should receive information about each player. I made a "for loop" to iterate through every element in the soup
and get the text content from the page by the attributes to find only words that i wanted and i did the "append" method to put this text in a specific empty list so it will serve later to create
the dataframe. I filtered none strings in the "names" column because it was showing in the list after the scrapping and a created a dataframe for every position : goalkeepers, defenders, 
attack, middle and second defenders.
![fifa](/Users/eduar/OneDrive/Imagens/gk_pd)
