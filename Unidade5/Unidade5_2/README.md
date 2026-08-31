# Aponti - FAP - Análise de dados

**Guilherme Fernando**
**Claudio Vinícius**

## Frequência_ranking_serie

---

# 🚦 Indicadores e Fatores Associados a Acidentes de Trânsito – PRF 2025

## 📖 Sobre o Projeto

Este projeto tem como objetivo realizar uma análise exploratória dos dados de acidentes de trânsito registrados pela Polícia Rodoviária Federal (PRF) durante o ano de 2025.

A análise foi desenvolvida como parte do **Módulo 6 – Frequências, Rankings e Séries Simples**, utilizando estatística descritiva, rankings, séries mensais e análise bivariada orientada a um alvo (acidentes fatais) para identificar padrões e fatores associados à gravidade e à fatalidade dos acidentes.

---

## 🎯 Objetivos

* Identificar os padrões de frequência dos acidentes segundo dia da semana, horário e fase do dia.
* Avaliar a distribuição geográfica e operacional (UF, BR, regional, sentido da via).
* Analisar a evolução mensal dos indicadores de gravidade e mortalidade ao longo de 2025.
* Investigar os fatores associados à fatalidade dos acidentes por meio de análise bivariada.
* Produzir indicadores que possam auxiliar ações de prevenção e segurança viária.

---

## 📂 Base de Dados

* **Total de registros:** 72.529 acidentes
* **Período coberto:** 2025-01-01 a 2025-12-31
* **Fonte:** Polícia Rodoviária Federal (PRF)

---

## 📊 Indicadores Globais

| Indicador                         | Valor      |
| ---------------------------------- | ---------- |
| Total de acidentes                 | 72.529     |
| Acidentes graves                   | 61.390     |
| % de acidentes graves              | 84,6%      |
| Acidentes fatais                   | 5.209      |
| % de acidentes fatais              | 7,2%       |
| Acidentes no período noturno       | 32.154     |
| Acidentes em finais de semana      | 23.024     |
| Acidentes com múltiplos veículos   | 48.912     |

---

## 📅 Frequências e Rankings

### Acidentes por Dia da Semana

| Dia da Semana   | Participação | Taxa Fatal |
| --------------- | ------------ | ---------- |
| Sábado           | 15,9%        | 8%         |
| Domingo          | 15,8%        | 9%         |
| Sexta-feira      | 15,4%        | 7%         |
| Segunda-feira    | 14,2%        | 6%         |
| Quarta-feira     | 13,2%        | 6%         |
| Quinta-feira     | 13,0%        | 7%         |
| Terça-feira      | 12,5%        | 6%         |

### Acidentes por Fase do Dia

| Fase do Dia   | Participação | Taxa Fatal |
| ------------- | ------------ | ---------- |
| Pleno dia     | 55,7%        | 5%         |
| Plena Noite   | 34,2%        | 10%        |
| Anoitecer     | 5,4%         | 6%         |
| Amanhecer     | 4,8%         | 11%        |

### Acidentes por Sentido da Via

| Sentido da Via   | Participação | Taxa Fatal |
| ---------------- | ------------ | ---------- |
| Crescente         | 53,4%        | 8%         |
| Decrescente       | 46,4%        | 7%         |
| Não Informado     | 0,2%         | 0%         |

### Acidentes por Quantidade de Veículos (principais categorias)

| Quantidade de Veículos | Participação | Taxa Fatal |
| ------------------------ | ------------ | ---------- |
| 2 veículos                | 48,4%        | 7%         |
| 1 veículo                 | 32,6%        | 4%         |
| 3 veículos                | 11,9%        | 11%        |
| 4 veículos                | 4,1%         | 15%        |
| 5 veículos                | 1,8%         | 18%        |

*Leitura: acidentes com maior número de veículos envolvidos tendem a apresentar taxas de fatalidade mais elevadas.*

---

## 📈 Série Mensal (2025)

| Indicador                          | Faixa observada ao longo do ano |
| ------------------------------------ | -------------------------------- |
| % de acidentes graves                | 84% a 85%                        |
| Taxa de mortalidade                  | 8% a 9%                          |
| Índice de gravidade                  | 1,6 a 1,8                        |
| % de acidentes com múltiplos veículos| 65% a 69%                        |

*Leitura: os indicadores mensais se mantiveram relativamente estáveis ao longo de 2025, sem grandes oscilações sazonais.*

---

## 🔍 Fatores Associados à Fatalidade

A taxa média de acidentes fatais observada na base foi de **7,2%**.

### Estados com maiores taxas de fatalidade

| Estado    | Taxa Fatal |
| --------- | ---------- |
| Maranhão (MA) | 19%    |
| Pará (PA)     | 17%    |
| Roraima (RR)  | 16%    |
| Amazonas (AM) | 14%    |
| Alagoas (AL)  | 14%    |

### Fase do dia mais crítica

| Fase do Dia   | Taxa Fatal |
| ------------- | ---------- |
| Amanhecer     | 11%        |
| Plena Noite   | 10%        |
| Anoitecer     | 6%         |
| Pleno dia     | 5%         |

---

## 📌 Conclusões

Os resultados demonstram que:

* Finais de semana (sábado e domingo) concentram a maior parcela dos acidentes e também as maiores taxas de fatalidade entre os dias da semana.
* O período noturno e o amanhecer apresentam taxas de fatalidade superiores às do período diurno, possivelmente associadas à menor visibilidade.
* Acidentes com maior número de veículos envolvidos tendem a apresentar maior gravidade.
* Maranhão, Pará e Roraima registram taxas de fatalidade significativamente superiores à média nacional.
* Os indicadores mensais de gravidade e mortalidade se mantiveram estáveis ao longo de 2025, sem picos sazonais expressivos.
* Categorias com poucos registros (alguns municípios, BRs e faixas de veículos) podem apresentar taxas de fatalidade extremas e devem ser interpretadas com cautela.

Essas informações podem auxiliar na definição de estratégias de fiscalização, educação para o trânsito e planejamento de políticas públicas voltadas à redução da mortalidade nas rodovias brasileiras.

---

## 📚 Fonte dos Dados

**Polícia Rodoviária Federal (PRF)**
Base de Acidentes Rodoviários – 2025
