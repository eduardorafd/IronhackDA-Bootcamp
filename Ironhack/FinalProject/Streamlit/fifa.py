# Libraries
import streamlit as st
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import pairwise_distances
from scipy.spatial.distance import cdist, pdist, squareform

fifa = pd.read_csv('FIFAOriginal.csv')
def create_similarity(dataframe, client, metric='euclidean'):
        
    distance_vector = cdist(client, dataframe[client.columns], metric)
    similarities = 1 / (1 + distance_vector)
    similarity_index = pd.DataFrame(similarities, 
                                    columns=dataframe.index, index = ['Recommendation']).T.sort_values('Recommendation', ascending = False)
    dataframe['Recommendation'] = similarity_index
    return dataframe.reset_index().sort_values('Recommendation', ascending = False)

# Title 
st.markdown(
    """
    <style>
    .reportview-container {
        background: url("https://th.bing.com/th/id/Rb6f299486ad99124c32e6cc22519a75f?rik=joXrtjSxQuDboA&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fIVZ9DG0.jpg&ehk=s46jlN4cfUJxgf3AdLj4sziwWhbosvadkxQMO29C%2bSU%3d&risl=&pid=ImgRaw")
    }
   .sidebar .sidebar-content {
        background: url("https://th.bing.com/th/id/Rb6f299486ad99124c32e6cc22519a75f?rik=joXrtjSxQuDboA&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fIVZ9DG0.jpg&ehk=s46jlN4cfUJxgf3AdLj4sziwWhbosvadkxQMO29C%2bSU%3d&risl=&pid=ImgRaw")
    }
    </style>
    """,
    unsafe_allow_html=True)

st.markdown("<h1 style='text-align: center; color: black;'>Players Recommendations</h1>", unsafe_allow_html=True)

foot = st.sidebar.multiselect("Foot:", np.sort(fifa["Foot"].unique()))
position = st.sidebar.multiselect("Position:", np.sort(fifa["Position"].unique()))
filtered_fifa = fifa.loc[(fifa['Position'].isin(position)) & (fifa['Foot'].isin(foot))]
coluna = st.sidebar.multiselect('Select the skills:', fifa.drop(columns = ['Name', 'Teams','Values', 'Position', 'Foot']).columns)
data_client = {}
for col in coluna:
    data_client[col] = st.sidebar.number_input(f'What is the {col} value?', 0, 100)
line_number = st.sidebar.number_input('How many recommendations would you like?', 1, len(fifa))


def create_barplot(dataframe, coluna):
    df2 = dataframe[coluna + ['Name']].set_index('Name').stack().rename('Values').to_frame().reset_index()
    df2['Players Skills'] = df2['level_1']
    fig, ax = plt.subplots(figsize =(17, 10))

    plot = sns.barplot(x = 'Name', y = 'Values', data = df2, hue = 'Players Skills', ax = ax)
    plt.grid()
    plt.rc('xtick',labelsize=10)
    plt.rc('ytick',labelsize=10)
    return fig

   
if st.sidebar.checkbox('Recommendation'):
    client = pd.DataFrame(data_client, index = [0])
    if len(filtered_fifa) > 1:
        df = create_similarity(filtered_fifa, client).head(line_number)
        st.write(df.style.set_properties(**{'background-color':'black'}))
    
    else:
        df = create_similarity(fifa, client).head(line_number)
        st.write(df.style.set_properties(**{'background-color':'black'}))

    try:
        if st.sidebar.checkbox('Do you want to see the graphic?'):
            st.pyplot(create_barplot(df, coluna))
    except:
        st.write('You should select some options!')
    
    
