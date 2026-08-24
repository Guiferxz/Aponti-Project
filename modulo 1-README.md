# Módulo 01 — Análise e Preparação de Dados de Acidentes da PRF

## 📌 Sobre o projeto

Este projeto reúne as atividades desenvolvidas ao longo do **Módulo 01**, utilizando dados de acidentes rodoviários da **Polícia Rodoviária Federal (PRF/DATATRAN 2025)**.

O trabalho foi desenvolvido de forma progressiva, começando pela exploração dos dados em planilhas, passando pela criação de tabelas e gráficos, análises utilizando SQL e, por fim, pela preparação e tratamento dos dados para utilização em análises mais avançadas e modelos preditivos.

O objetivo geral é transformar uma base de dados bruta de acidentes em informações organizadas, indicadores e bases preparadas para análise.

---

# 📚 Etapas do projeto

O módulo é dividido em quatro grandes etapas:

1. **Unidade 1 — Análise inicial dos dados**
2. **Módulo 02 — Tabelas e visualização dos dados**
3. **Módulo 03 — Consultas e análise utilizando SQL**
4. **Módulo 04 — Preparação e tratamento dos dados**

Cada etapa acrescenta uma nova camada de análise e preparação à base da PRF.

---

# 1️⃣ Unidade 1 — Análise inicial dos dados

A primeira etapa teve como objetivo trabalhar os dados da PRF por meio de **planilhas eletrônicas**, realizando operações matemáticas, estatísticas, consultas e gráficos.

## 📊 Principais atividades

Foram realizadas:

- Operações matemáticas básicas;
- Cálculos estatísticos;
- Média;
- Mediana;
- Quartis;
- Valores máximo e mínimo;
- Contagem de ocorrências;
- Análise de mortos;
- Utilização da função **PROCV**;
- Criação de gráficos.

A etapa permitiu compreender a estrutura da base e começar a identificar padrões relacionados aos acidentes rodoviários.

---

# 2️⃣ Módulo 02 — Tabelas e gráficos

Na segunda etapa, a análise foi aprofundada por meio da criação de **tabelas e gráficos**, permitindo visualizar diferentes características dos acidentes.

## 📋 Principais análises

Foram desenvolvidas análises sobre:

- Acidentes por UF;
- Acidentes fatais por mês;
- Causas mais frequentes;
- Mortos por BR;
- Tipo de acidente e gravidade;
- Condições meteorológicas;
- Classificação dos acidentes;
- Municípios com acidentes fatais.

## 📈 Visualização

Também foram criados gráficos para facilitar a interpretação dos resultados, incluindo:

- Gráfico de acidentes por UF;
- Evolução mensal dos acidentes fatais;
- Principais causas;
- Mortos por BR;
- Comparação entre acidentes fatais e não fatais.

Essa etapa teve como objetivo transformar os dados numéricos em informações visuais mais fáceis de interpretar.

---

# 3️⃣ Módulo 03 — Análise utilizando SQL

A terceira etapa levou as análises para um ambiente de **Banco de Dados**, utilizando SQL.

Foram desenvolvidas consultas para realizar filtros, agrupamentos, contagens e cálculos de indicadores.

## 🗃️ Principais consultas

Foram analisados:

- Total de acidentes;
- Total de mortos;
- Percentual de letalidade;
- Acidentes por UF;
- Mortos por BR;
- Evolução dos acidentes por mês;
- Tipo de acidente;
- Causas dos acidentes;
- Fase do dia;
- Condição meteorológica;
- Tipo de pista.

A atividade também realizou análises combinando duas variáveis, como **tipo de pista × fase do dia**, caracterizando análises bivariadas.

## 📊 Indicadores

Um dos principais indicadores utilizados foi o **percentual de letalidade**, calculado a partir da relação entre mortos e pessoas envolvidas.

Também foi utilizado o **Lift**, que permite comparar a taxa de letalidade de determinado tipo de acidente com a taxa média geral.

## 👁️ Views

Foram criadas views SQL para facilitar a utilização dos dados em análises futuras.

### `vw_indicadores_mensais`

Consolida os acidentes e mortos por ano e mês.

### `vw_indicadores_uf_br`

Consolida os indicadores por UF e BR, incluindo acidentes, mortos e percentual de letalidade.

---

# 4️⃣ Módulo 04 — Preparação dos dados

A quarta etapa teve como foco a **limpeza, padronização e preparação dos dados** para análises futuras e modelagem.

O tratamento foi realizado utilizando Python e Pandas.

## 🧹 Tratamento

Foram realizadas ações como:

- Padronização dos nomes das colunas;
- Conversão de variáveis numéricas;
- Correção do separador decimal da variável `km`;
- Conversão das datas;
- Tratamento de valores ausentes;
- Verificação de duplicidades;
- Padronização de categorias.

Os nomes das colunas foram padronizados para letras minúsculas, sem acentos e utilizando `_`. As variáveis numéricas foram convertidas com `pd.to_numeric(errors='coerce')` e as datas com `pd.to_datetime(errors='coerce')`.

## 🚨 Variável-alvo

Foi criada a variável:

```text
acidente_fatal
```

A regra utilizada é:

```text
1 → quando mortos >= 1
0 → quando mortos = 0
```

Essa variável representa o desfecho utilizado para futuras etapas de modelagem.

## 🔧 Variáveis derivadas

Durante o tratamento também foram criadas variáveis derivadas para facilitar as análises, incluindo informações relacionadas a:

- Total de vítimas;
- Gravidade do acidente;
- Índices de gravidade;
- Hora;
- Faixa horária;
- Turno;
- Fase do dia;
- Mês;
- Trimestre;
- Dia da semana;
- Fim de semana;
- Localização.

## ⚠️ Prevenção de Data Leakage

Foi criada uma **base específica para modelagem**, excluindo variáveis derivadas diretamente do desfecho.

Essa decisão evita que o modelo tenha acesso a informações que já revelam se o acidente foi fatal, tornando a preparação mais adequada para uma futura etapa de aprendizado de máquina.

---

# 📁 Principais arquivos

Ao longo das quatro etapas foram produzidos diferentes tipos de arquivos.

## 📊 Dados

- `base_analitica_prf_2025.csv`
- `base_modelavel_prf_2025.csv`
- `dicionario_variaveis_modulo4.csv`

## 🗃️ Banco de dados

- Arquivo SQL contendo as consultas e criação das views;
- Consultas exportadas em arquivos CSV;
- Arquivos relacionados às análises bivariadas;
- Visão agregada dos indicadores.

## 📓 Notebook

- `Preparação_dos_Dados.ipynb`

O notebook contém o processo de preparação e tratamento da base de dados.

## 📝 Documentação

- `decisoes_tratamento_modulo4.md`

Esse arquivo registra as principais decisões tomadas durante o tratamento dos dados.

---

# 🛠️ Tecnologias utilizadas

Durante o desenvolvimento do projeto foram utilizadas diferentes ferramentas:

- **Microsoft Excel / Google Sheets**
- **SQL**
- **SQLite**
- **Python**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Jupyter Notebook / Google Colab**
- **Arquivos CSV**

---

# 📈 Evolução do projeto

O projeto segue uma evolução progressiva:

```text
Base bruta da PRF
       ↓
Análise inicial em planilhas
       ↓
Tabelas e gráficos
       ↓
Consultas SQL
       ↓
Indicadores e análises bivariadas
       ↓
Limpeza e padronização
       ↓
Base analítica
       ↓
Base modelável
       ↓
Futuras análises/modelos preditivos
```

Essa sequência permite sair de dados brutos e chegar a uma estrutura preparada para análises mais avançadas.

---

# 🎯 Objetivo geral

O principal objetivo do projeto é **analisar dados de acidentes rodoviários da PRF e transformá-los em informações úteis para compreender padrões de ocorrência e gravidade dos acidentes**.

Ao longo do módulo, são trabalhados conceitos de:

- Análise de dados;
- Estatística;
- Visualização de dados;
- Banco de dados;
- SQL;
- Limpeza de dados;
- Engenharia de atributos;
- Indicadores;
- Análises bivariadas;
- Preparação para Machine Learning.

---

# 📌 Conclusão

As quatro etapas formam um fluxo completo de **exploração, análise e preparação de dados**.

A primeira etapa introduz a análise da base por meio de planilhas. Em seguida, as informações são organizadas em tabelas e gráficos. O terceiro módulo utiliza SQL para realizar consultas, agregações e criação de indicadores. Por fim, o quarto módulo realiza o tratamento e a preparação dos dados para análises e modelagem.

Dessa forma, o projeto estabelece uma base estruturada para as próximas etapas, permitindo que os dados da PRF sejam utilizados de maneira mais confiável em análises, dashboards e modelos preditivos.