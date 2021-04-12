# PostgreSQL Project
This project was another one from the Data Analytics bootcamp from Ironhack company. The PostgreSQL project summed up the third week of the course covering the topics about SQL.
This work was guided by a dataset about a bank which needs to separate its clients between good and bad ones to offer some services. The Berka dataset has many tables with important
information about the clients such as loans, creditcards, accounts and others. So my task was to find patterns with the data to set good and bad clients.
# Understanding the project
I started off my project by reading the documentation of the dataset to understand better what i should do to get into my results properly. I found some interesting points that
helped me to go through the work like the relation between the clients and the accounts because one of them could have many accounts and one account could be managed by many clients.
Also, i discovered that i could separate good and bad clients by looking to the table "loan" because it had the column "status" which had information about the loans paid by the 
customers. The status was featured by the contracts between the bank and the clients , if the client was ok with the payment he would be "C" and if he had finished the
contract paying all the loan he would be "A". Otherwise , he would be categorized into "B" or "D". So i decided to use the table "loan" as my base to understand what i should do.
# Step 1 - Analysing the relations.
After doing some research about the project to know if my reviews were 100% correctly, i used some functions in the Query tool to analyse the dataset. The function "SELECT" was the 
special one of course because it was the main function to do any of my work. I used this function to analyse all the dataset and to find common columns between the tables to implement
the "JOIN" function. I could analyse the data of many tables at the same time with this method because it uses a column that appears in both tables. So , i could merge the tables that
i would like to analyse. I started it with the tables "account" and "loan" because they both had the column "account_id" so i would have information about the client's accounts
 and this could give me interesting information related to the "status" mentioned above. This guided me to do the "INNER JOIN" function to merge these tables and work with their
 columns at once. The "JOIN" function was also great to eliminate null values at the dataset because many rows did not have the "status" quotedso i dropped it to have solid results.
 ### Results from step 1
 
