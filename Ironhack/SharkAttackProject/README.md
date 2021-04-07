## Ironhack - Shark Attack project - Module 1 
This is my project called "Shark Attack" provided from the Ironhack's Data Analytics bootcamp. I had to clean and filter the dataset about shark attacks around the world to get only the information to answer a specific question made by myself about this topic. So, regarding to the whole work, the purpose is to analyse and provide a answer about something from the messy dataset. This work shows many information approached on the second week of  the course and covers basic skills required to become a data analyst. So, this project was very important for me. 
## Step 1 - Understanding the data. 
First of all, i needed to open the dataset in the jupiter notebook with the function "read_csv" and the argument "encoding = latin1". How i noticed that the dataset 
had columns unnamed, missing values and wrong information, i decided to use the functions "drop", "dropna" and "replace" to fix these problems. I dropped 
many columns, so the rest of it was "Country", "Area" , "Location", "Activity", "Name" and "Sex". Also, i removed the missing values and replaced wrong words in both "Sex" and 
"Name" because i was interested on how much more cases the dataset had with male than female. I did the same with "Activity" to understand the reasons for all cases. 
Finally, i dropped the countries to let me decide which one of my top 3 choices i should work with. Brazil, United States and Australia were my options for it. 
#### Results from step 1. 
Second, even though i was dealing with the beggining fo the work, i saw that male had 4463 more cases than female, USA and AUSTRALIA were the countries with more data in 
cluding at least 2000 cases, Brazil had next to 100 cases and Surfing was the activity most cited on the results. 
## Step 2 - Picking a country and cleaning the data. 
How i like to study about my country, i selected Brazil to make my data cleaning. This time, i learnt a lot about how to use the "replace" method because it helped me 
to change many incorrect values on the dataset and organize the column "Area", "Location" and "Activity". I did this by replacing a bunch of names for analysing less  
categories. For example, many activities could be replaced by swimming, other by fishing and many ones by surfing. My new categories for the places were "Pernambuco", 
"Rio de Janeiro" and "Outros" which means "others". A lot of states and cities were located in these places so i had to organize. I cleaned the missing values from the 
location colums because i could not analyse what i wanted without the places and i identified male names with null values in the sex column, so i changed the missing values 
there as well. For last, i dropped the "Name" columns because it was not necessary after having all needed genre cases separated correctly. 
#### Results from step 2. 
I ended this part with 93 cases from Brazil to analyse where i had 88 cases for male and 5 cases for female. The state of Pernambuco had more than 70% of the cases with 65% 
in the city of Recife. Surfing and swimming were the activities with more cases. Fishing was one activity with only some cases but important to talk about genre differences as 
you are going to see on step 3. Surfing was practiced only by male and for female i found swimming but not deep because i had just 5 cases to look. 
### Final Dataset 
My final dataset had 93 rows and 5 columns specified by "Sex", "Country", "Area", "Location" and "Activity". It showed the cases from Brazil explaining the differences among 
the states and cities like Pernambuco and Recife. It also had the cases sorted by male and female and by activities as surfing. I also provided some graphics to understand 
better the information about all the work done. 
## Step 3 - Interpreting the results with research. 
Finally, i did some research to understand why i got these statistics. I found in three sites from Brazil that Pernambuco had more than 64 cases since 10 years ago, so the 
data was veracious. Some reasons for the cases were the construction of a seaport which could attract the sharks to the coast because it was constructed in some places that  
the animals were used to procreate. The eutrophication phenomenon was another one because it could reduce the population of fishs due to the increase of garbage in the sea, so the sharks should move next to the coast to find for food. Furthermore, another phenomenon called returns currents could be one more reason for the problem because it created a 
deep route of sharks next to the coast as well, so that is why surfing activity has more cases because to take the stronger waves the people were getting close to these danger 
places. And what about the fishing cited above ? even though i do not found a lot of cases about fishing , it is a good topic to talk because is an activity practiced so much 
by male people due to working where in Brazil it is commom to see it in many beaches. So, one reason for having more cases with male people related to fishing could be explained 
with it. 



