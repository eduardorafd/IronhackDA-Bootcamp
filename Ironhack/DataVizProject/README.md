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
How the table from the website was showing stats about players and teams by the statistics i made my csv file like the layout from the pages. Also, I made the scrapping grouping by positions 
because the main content had the best players from the game so it was not getting a lot of players but just the best ones mixed. I separated it to get more data such as 875 goalkeppers
and 1200 defenders. And, i got players that could have any stats so it would give many possibilities to the client to decide which player he could pick up. After, i created empty lists to represent 
each category like names , teams , values , ball control , overall and so on that should receive information about each player. How i could get the teams names and statistics for every player i did not need to do the web scrapping twice to separate it as well. The teams would come as a category for each player. Further, I made a "for loop" to iterate through every element in the soup
and get the text content from the page by the attributes to find only words that i wanted and i did the "append" method to put this text in a specific empty list so it will serve later to create
the dataframe. Finally, I filtered strings in the "names" column because it was showing none ones in the list after the scrapping and a created a dataframe for every position : goalkeepers, defenders, 
attack, middle and second defenders as you can see below one of the examples.
![gk_pd](https://user-images.githubusercontent.com/80002453/116029860-9b5aeb00-a630-11eb-8b10-7915ef57d1ce.png)
### Step 3 - CSV file
I made this table for every position and then i used the "pd.concat" method to join all these tables and create a csv file with 5296 players from the FIFA soccer game, 27 columns that represented each category for a player like a personal information such as values of contract or skills in the matchs like dribbling opponents. I exported the csv file to my computer so i could work with it in Tableau and go for the vizualization process. Before we go on , you can see the result of the [Players_Fifa.csv](https://github.com/eduardorafd/data-modules/files/6374440/Players_Fifa.csv) below.
![all_pd](https://user-images.githubusercontent.com/80002453/116031551-49b45f80-a634-11eb-8312-a61fb98cf77a.png)
### Step 4 - Tableau Vizualization





