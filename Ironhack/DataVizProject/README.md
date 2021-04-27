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
### Step 4 - Tableau Vizualization - Client 
This part covered the topics viewed on the fifth week of the bootcamp related to statistical vizualization in Tableau or in python importing some libraries such as MatplotLib and Seaborn. I chose to make my vizualization with Tableau and i started off by seeing how i could use my columns and rows properly to let the client decide what type of player he would like to analyse. Then, i created a new worksheet where the columns "Position", "Teams", "Foot", "Values", "Overall" and the measure values were the filters so the client could decide if he would like a defender or a goalkeepers for example, someone from Real Madrid, right or left foot, expensive or not, overall better than 90 and what skills he was willing to see such as goalkeepers reflexes, free kicking or marking as well. Also, i separated the "Name" with many colors and its showing the percentual of each player. The result is a bar graphic as you can see below.
![Viz1](https://user-images.githubusercontent.com/80002453/116081861-252aa880-a671-11eb-9345-67201c32c04a.png)
### Step 4.1 - Players Comparison  
After the client has found many players for his requirements he could compare these players with each other to decide which one he would pick up. I created a bar graphic again where the columns skills and the "Name" were the filters. So the client with the players names in hand could search for each one and analyse them by any skills as he prefers. I take as a basic example below the comparison among Cristiano Ronaldo , Messi and Lewandowski because they are top 3 soccer players in the world.
![Viz2](https://user-images.githubusercontent.com/80002453/116082661-0b3d9580-a672-11eb-8419-bbac6e5eede7.png)
### Step 4.2 - Client Teams 
Now , if the client wishs to analyse a group of players by team and compare them he could analyse it as well. I created a bar graphic to show all skills from each team where each one would have their specific amount of players. The idea is to get the score of all the players for each team and calculate the average to see which team has the best score. For example , Manchester United had 21 players and the best overall of the dataset achieving 82.71. But to be righteous the client should select teams with same amount of players and he could filter it by position and foot preference as well.
![Viz3](https://user-images.githubusercontent.com/80002453/116083914-94090100-a673-11eb-833a-3ea6d8d5f87c.png)
### Step 4.3 - Teams Comparison
The last worksheet was represented by a bar graphic as well and it would compare the teams as the client would have done with the players on the steps above. The idea is to just select by the name what teams the client would like to analyse the statistical skills. After deciding a team to pick up he could comeback to the previous steps and analyse the players for a specific team and try to compare them again to make a contract with someone. I decided to use Real Madrid and Barcelona as a basic example so you can view the average skills differences between these teams. 
![Viz4](https://user-images.githubusercontent.com/80002453/116084520-48a32280-a674-11eb-9c57-b3212ef69e74.png)
### Step 5 - Final Reuslt
Finally, i made a story to unify all these worksheets and make the presentation containing what i explained before. Also, if you want to look on how i make all the coding process, the document can be found in this folder DataVizProject. After this image below you will have access to my tableau vizualization public where you can also behave as my client and decide what player or team you would select by any type of skills as you want.
![Viz9](https://user-images.githubusercontent.com/80002453/116177419-22b86500-a6ea-11eb-929b-76daaa5894fd.png)
Thank you for the attention [Tableau Vizualization here!](https://public.tableau.com/profile/eduardo2842#!/vizhome/ProjectDataViz_16193879491070/InterativeFIFA?publish=yes)



