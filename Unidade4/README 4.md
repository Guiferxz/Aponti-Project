# Módulo 04 — Análise de Dados da PRF com SQL

## 📌 Sobre a atividade

A unidade 4 tem como objetivo aplicar conceitos de **Banco de Dados e SQL** sobre a base de acidentes da **Polícia Rodoviária Federal (PRF) — DATATRAN 2025**.

Nesta etapa, os dados são analisados diretamente por meio de consultas SQL, permitindo realizar contagens, agregações, filtros, cálculos de indicadores e análises de relações entre diferentes variáveis.

Além das consultas SQL, foram gerados arquivos CSV contendo os resultados das análises, que podem ser utilizados posteriormente para visualização e interpretação dos dados.

## 🗃️ Base de dados

A atividade utiliza os registros de acidentes rodoviários da PRF referentes ao ano de **2025**.

Entre as informações utilizadas estão:

- UF;
- BR;
- Data do acidente;
- Tipo de acidente;
- Causa do acidente;
- Número de pessoas envolvidas;
- Número de mortos;
- Tipo de pista;
- Fase do dia;
- Condição meteorológica.

A partir desses dados foram construídos indicadores relacionados à frequência dos acidentes e à sua letalidade.

## 🛠️ Tecnologias e ferramentas

- **SQL**
- **SQLite**
- Arquivos **CSV**
- Base de dados da **PRF/DATATRAN 2025**

## 🔎 Consultas SQL

O arquivo `atividade24-07-1.sql` reúne as principais consultas desenvolvidas durante a atividade.

Entre elas estão:

### Estrutura e quantidade de registros

Foi realizada uma consulta para verificar a estrutura da tabela e outra para descobrir a quantidade total de registros existentes na base.

### Indicadores gerais

Foram calculados:

- Total de acidentes;
- Total de mortos;
- Percentual de letalidade.

O percentual de letalidade é calculado relacionando a quantidade de mortos com a quantidade de pessoas envolvidas nos acidentes.

### Análise por Estado

Os acidentes foram agrupados por **UF**, permitindo comparar:

- Quantidade de acidentes;
- Quantidade de mortos;
- Percentual de letalidade.

Também foi utilizado um filtro para considerar estados com pelo menos 100 ocorrências.

### Análise por Rodovia

Foi realizada uma consulta para identificar as **30 BRs com maior número absoluto de mortos**.

Essa análise permite identificar quais rodovias concentram maior quantidade de vítimas fatais.

### Evolução temporal

Os acidentes foram agrupados por **ano e mês**, permitindo analisar a evolução das ocorrências ao longo do período estudado.

### Tipo de acidente

Foi realizada uma análise relacionando o **tipo de acidente** com sua taxa de letalidade.

Dessa forma, é possível comparar quais tipos de ocorrências apresentam maior ou menor gravidade.

### Causas dos acidentes

Foram identificadas as principais causas de acidentes e calculadas suas respectivas taxas de letalidade.

A consulta considera causas com pelo menos 10 ocorrências para evitar que resultados baseados em poucos casos tenham peso excessivo na análise.

### Fase do dia

Os acidentes foram agrupados de acordo com a **fase do dia**, permitindo analisar diferenças na letalidade entre períodos como:

- Pleno dia;
- Noite;
- Amanhecer;
- Anoitecer.

### Condição meteorológica

Foi analisada a relação entre as **condições meteorológicas** e o percentual de letalidade dos acidentes.

### Tipo de pista

A letalidade também foi comparada entre diferentes tipos de pista:

- Pista simples;
- Pista dupla;
- Pista múltipla.

Essa análise permite avaliar se existe diferença na gravidade dos acidentes de acordo com a configuração da pista.

## 📊 Análises bivariadas

Foram gerados arquivos relacionados às análises **bivariadas**, permitindo observar a relação entre duas variáveis.

Entre as análises estão:

- Tipo de pista;
- Tipo de acidente;
- Tipo de pista × fase do dia;
- Condição meteorológica;
- Fase do dia.

O objetivo é identificar possíveis relações e padrões entre diferentes características dos acidentes.

## 📁 Consultas exportadas

Os resultados das consultas foram organizados em arquivos CSV.

Entre os arquivos gerados estão:

- `mes.csv` — análise dos acidentes por mês;
- `tipo_acidente.csv` — análise por tipo de acidente;
- `UF.csv` — análise por estado;
- `BR.csv` — análise por rodovia;
- `clima.csv` — análise por condição meteorológica;
- `fase_dia.csv` — análise por fase do dia;
- `causa.csv` — análise por causa do acidente.

## 👁️ Visão agregada

Também foi criada uma visão agregada contendo informações agrupadas por **UF e BR**.

A visão apresenta:

- `uf`;
- `br`;
- `acidentes`;
- `mortos`;
- `percentual_letalidade`.

Essa estrutura facilita a utilização dos dados em análises posteriores e na construção de dashboards.

## 🧩 Views criadas

Foram desenvolvidas views SQL para facilitar o acesso aos indicadores.

### `base`

A view `base` acrescenta uma classificação chamada `acidente_fatal`.

Quando o número de mortos é maior ou igual a 1, o registro recebe o valor **1**; caso contrário, recebe **0**.

### `vw_indicadores_mensais`

Consolida os indicadores por ano e mês, apresentando:

- Ano;
- Mês;
- Quantidade de acidentes;
- Quantidade de mortos.

### `vw_indicadores_uf_br`

Consolida os dados por **UF e BR**, apresentando:

- Estado;
- Rodovia;
- Acidentes;
- Mortos;
- Percentual de letalidade.

Essas views facilitam a reutilização dos resultados em relatórios e dashboards.

## 📈 Indicadores de letalidade

Um dos principais indicadores trabalhados no módulo é o **percentual de letalidade**.

A fórmula utilizada é:

**Percentual de letalidade = (Mortos ÷ Pessoas) × 100**

Esse indicador permite comparar a gravidade dos acidentes considerando não apenas a quantidade de ocorrências, mas também a quantidade de pessoas envolvidas.

Também foi calculado o **Lift**, que compara a taxa de letalidade de um determinado tipo de acidente com a taxa média geral.

- **Lift > 1:** letalidade acima da média;
- **Lift = 1:** letalidade próxima da média;
- **Lift < 1:** letalidade abaixo da média.

## 🎯 Objetivos

Os principais objetivos do Módulo 03 são:

1. Aplicar comandos SQL em uma base de dados real;
2. Realizar consultas e agregações;
3. Utilizar `SELECT`, `WHERE`, `GROUP BY`, `HAVING` e `ORDER BY`;
4. Utilizar funções de agregação como `COUNT()` e `SUM()`;
5. Criar indicadores de letalidade;
6. Realizar análises bivariadas;
7. Criar e utilizar views;
8. Exportar resultados para arquivos CSV;
9. Identificar padrões relacionados aos acidentes rodoviários;
10. Preparar dados para análises e dashboards.

## 📌 Conclusão

O Módulo 03 amplia as análises realizadas anteriormente ao utilizar **SQL para consultar e transformar os dados da PRF**.

As consultas desenvolvidas permitem analisar os acidentes sob diferentes perspectivas, como localização, período, causa, tipo de acidente, condição meteorológica, fase do dia e tipo de pista.

Com a utilização de indicadores como **percentual de letalidade e Lift**, além das análises bivariadas e das views consolidadas, os dados podem ser transformados em informações mais relevantes para identificar padrões e apoiar futuras análises sobre a segurança nas rodovias federais.
