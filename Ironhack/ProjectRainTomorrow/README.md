<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118016974-6c30c300-b32c-11eb-8ba6-1bf5cf6c1711.jpg" />
</p>

# Project Rain Tomorrow
Hello ! Welcome back to another project from the Ironhack Data Analytics Bootcamp which covered the topics of the 7 and 8 week from the course. This time, i needed to use the machine learning skills learnt to predict for my client if is going to rain tomorrow.
The idea is to propose correctly this answer regarding to the capture rate and the conversion rate because my client was believing me that he could go to a place with a lot of people and bring many umbrellas as possible to sell them to the public and have the best profit of the month.
So, if i give a correctly answer i would help him a lot and would maintain my job for more time. If not, i would end up without money and my client would not keep his progress.

## Libraries
* Pyforest
* Pandas 
* Numpy
* Matplotlib
* LGBMClassifier
* Roc_auc_score, plot_roc_curve
* Plot_importance
* precision_score, recall_score, f1_score
* Seaborn
* Resample
* StandardScaler
* LabelEncoder
* Train_test_split
* Learning_curve
* Cross_val_score, KFold
* GridSearchCV
* Shap

# Step 1 - Loading the dataset and Actions.
First of all, i started loading the principal dataset and the wind tables containing the information required to make my predictions. I concatenated all wind tables because they have the same content but in different dates.
After, i merged this new table with the rain table to have all columns possible for predicting in one dataset. Also, i used a left merge on the date and location because they were their common columns.
Moreover, starting with some tranformations, i changed the data type for many columns because it would help me to evaluate the features that will be used in the model. So, i replaced the values in the columns 'raintomorrow' and 'raintoday' to 0 and 1 , meaning 'No' or 'Yes'. And, label encoder was my tool to transform object columns.
For last, my deal to treat missing values was first to use KNNimputer but how it was not changing a lot on my score and taking a lot of time to give me the results , these values were substituted by the feature median.

<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118022828-2e836880-b333-11eb-9bdf-dc4565268765.png" />
</p>

# Step 2 - Unbalanced Data, Correlation, Model selection and so on.

Second, before analysing the relation among the columns , i decided to deal with the unbalanced data in the project , because i had many more data with "raintomorrow" equals to 0 than to 1.

<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118023236-b1a4be80-b333-11eb-9cac-2c0c897465c7.png" />
</p>

So, i had on mind to treat it with oversampling because it would create new rows to balance this data and have a righteous model to make the predictions. And, how i did not want to lose any content of my "raintomorrow" as 0, i dint use undersampling because it would "cut" my dataset.

<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118023246-b49faf00-b333-11eb-881c-e0129e5bfe95.png" />
</p>


With my dataset balanced, i made a heatmap from the seaborn library to see the correlation among the features and have a preview to decide which columns i would use to have a better score in my train selection and my model.


<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118023217-ab164700-b333-11eb-8df1-f4ae48894c83.png" />
</p>


I could get my features from the better correlations, but i used skills that i learnt on the eighth week of the course, which one was a code from sklearn.feature_selection, where i imported RFECV to decide for me which columns i should use to make my model.
Before using this new code, i needed to select which model i would use, and i chose LGBM because it was giving me a better score than the other. Also, i made my separated my oversample dataset into train and test contents to have a good perfomance for my model before applying it.
Last, i used StandardScaler to normalize my dataset to have equal comparisons among the features. So, the parameters for the RFECV were the model and the train features. Running it, the code gave me proper columns to make the model.


<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118025673-7bb50980-b336-11eb-81a5-5fbaf9691303.png" />
</p>


Step 3 - The Score and improving the Model.
Another method iportant to improve my score was the GridSearchCV from the sklearn.model_selection, because it would provide me the best parameters for my LGBM model. To know it, i gave many options for the code analyse which combination should work better. After 3 hours waiting for it, where i felt like a real data analyst, i received the best parameter and it helped me to achieved the best score for my features.
Additionally, if i would like to know if my job was going on the good way , i compared my score to the column "modelo_vigente", because it was like a pattern model from the case to give us a sight about the real valuation. I got 95% of testing score, 98% of training score and 95% of cross val score, what is regard to my ROC_AUC score. I should explain as well why i used roc score to evaluate my model, and the reason is beacuse
i was concerning about have a good conversion rate and a good capture rate, so how roc score is like a balance between them, i chose it.


<p align="center">
  <img src="https://user-images.githubusercontent.com/80002453/118026832-a8b5ec00-b337-11eb-8323-5768f5a37a58.png" />
</p>

