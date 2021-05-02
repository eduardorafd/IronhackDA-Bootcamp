# Rick Diamonds Project
O projeto "Rick Diamonds" é uma atividade do bootcamp da Ironhack, onde nós alunos tivemos que criar um modelo de regressão linear para estimar os preços de 5000 diamantes da tabela do Rick.
Nós deveríamos prever esses valores pelo dataset original, o qual tinha quase 50 mil linhas com dados e preços reais de diversos diamantes, contendo as características de cada um. Além disso,
esse trabalho fez parte da sexta semana do curso de análise de dados , que abordava diversos conteúdos, como: regressão linear, probabilidade, sistemas de recomendação, testes de hipóteses e entre outros.

![diamond](https://user-images.githubusercontent.com/80002453/116827209-422e1280-ab6e-11eb-880d-424dce58d2ea.jpg)

## Libraries utilizadas
* import pandas as pd 
* import numpy as np
* import seaborn as sns
* import matplotlib.pyplot as plt
* from sklearn.linear_model import LinearRegression
* from scipy import stats
* from sklearn.metrics import mean_squared_error, r2_score
* 
## Parte 1 - Informações iniciais e Limpeza dos dados.
Antes de partir para a criação do modelo de previsão, eu observei diversas características importantes para prosseguir com o trabalho, como os tipos de cada coluna, a descrição, e as correlações entre cada
variável do dataset original. Diante disso, ao observar diversas colunas categóricas que faziam parte da avaliação de cada diamante, eu mudei elas para valores numéricos para facilitar a vizualização de
relações lineares. Também, vi que diversos valores da coluna 'z' estavam descritos com 0. Então, pela fórmula pré estabelecida pelo projeto, eu calculei esses números substituíveis. Já os valores que não
dariam para descorbrir devido à presença de 0 nas colunas 'x' e 'y', eu tirei essas linhas para ter uma regressão melhor.
![1](https://user-images.githubusercontent.com/80002453/116827157-0a26cf80-ab6e-11eb-933c-1b479fe6e746.png)
## Parte 2 - Analisar Correlações
Para colocar em um gráfico e ver melhor as correlações entre as colunas do dataset, eu usei o heatmap da library seaborn para separar pelas cores cada correlação e selecionar as maiores possíveis.

![2](https://user-images.githubusercontent.com/80002453/116827519-ad2c1900-ab6f-11eb-8895-8fa8a758aad5.png)

Após isso, ao notar que a coluna 'carat' possuía maior correlação com a coluna 'price' do que as outras, utilizei o gráfico de regplot para observar as tendências de crescimento linear entre essas colunas.Ao notar que os pontos
começam a ficar dispersos após uma determinada parte do gráfico , eu utilizei a função np.log para poder aproximar os pontos e ter uma regressão melhor.

![regplot](https://user-images.githubusercontent.com/80002453/116827299-a355e600-ab6e-11eb-94db-34adc856e350.png)
