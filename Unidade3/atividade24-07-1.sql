--  2-Ver a estrutura da tabela
PRAGMA table_info(dados_abertos_prfdatatran2025csv);

-- 3-Contar o número total de registros/ocorrências da base
SELECT COUNT(*) AS total_ocorrencias
FROM dados_abertos_prfdatatran2025csv;

-- 4-Excluir a view base se ela já existir no banco para evitar conflito
DROP VIEW IF EXISTS base;

-- 5-Criar a view base com a flag 'acidente_fatal' (1 para mortos >= 1,senão 0)
CREATE VIEW base AS SELECT *, CASE WHEN mortos >= 1 THEN 1 ELSE 0 END AS acidente_fatal FROM dados_abertos_prf_datatran2025;

-- 6-Calcular métricas gerais: total de acidentes, total de fatais e o % de letalidade
-- total de acidentes
SELECT COUNT(*) as total_acidentes from dados_abertos_prfdatatran2025csv;
-- total de fatais
SELECT SUM(mortos) AS total_fatais from dados_abertos_prfdatatran2025csv;
-- percentual de letalidade
SELECT round(100.0 * SUM(mortos) / SUM(pessoas),2) AS percentual_letalidade FROM dados_abertos_prfdatatran2025csv;

-- 7-Agregar acidentes, mortos e % de fatais por Estado (UF), filtrando os com ao menos 100 casos
SELECT uf, COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
round(100.0 * SUM(mortos) / SUM(pessoas),2) AS percentual_letalidade
FROM dados_abertos_prfdatatran2025csv
GROUP BY uf
HAVING COUNT(*) >= 100
ORDER BY percentual_letalidade DESC;

-- 8-Listar as 30 rodovias (BRs) mais letais em número absoluto de mortos
SELECT br, sum(mortos) as total_mortos from dados_abertos_prfdatatran2025csv GROUP by br order by total_mortos DESC LIMIT 30;

-- 9-Agrupar a evolução temporal dos acidentes por Ano e Mês (extraídos da data)
SELECT
strftime('%Y', data_inversa) AS ano,
strftime('%m', data_inversa) AS mes,
COUNT(*) AS acidentes FROM dados_abertos_prfdatatran2025csv GROUP BY ano, mes ORDER BY ano, mes;

-- 10-Analisar a relação bivariada entre o Tipo de Acidente e o % de ocorrências fatais
SELECT
tipo_acidente,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS percentual_letalidade FROM dados_abertos_prfdatatran2025csv
GROUP BY tipo_acidente ORDER BY percentual_letalidade DESC;

-- 11-Analisar as 30 Principais Causas de Acidentes ordenadas pela maior taxa de letalidade
SELECT causa_acidente,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS taxa_letalidade FROM dados_abertos_prfdatatran2025csv
GROUP BY causa_acidente HAVING COUNT(*) >= 10 ORDER BY taxa_letalidade DESC LIMIT 30;

-- 12-Comparar a gravidade dos acidentes de acordo com a Fase do Dia (noite, pleno dia, etc.)
SELECT fase_dia,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS percentual_letalidade FROM dados_abertos_prfdatatran2025csv
GROUP BY fase_dia ORDER BY percentual_letalidade DESC;

-- 13-Avaliar a influência da Condição Meteorológica no % de acidentes fatais
SELECT condicao_metereologica,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS percentual_letalidade FROM dados_abertos_prfdatatran2025csv
GROUP BY condicao_metereologica ORDER BY percentual_letalidade DESC; 

-- 14-Comparar a letalidade do acidente de acordo com o Tipo de Pista (simples, dupla, múltipla) 
SELECT tipo_pista,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS percentual_letalidade FROM dados_abertos_prfdatatran2025csv
GROUP BY tipo_pista ORDER BY percentual_letalidade DESC;

-- 15-Analisar a combinação de dois fatores (Pista + Fase do Dia) e a cobertura em relação ao total 
SELECT tipo_pista,
fase_dia,
COUNT(*) AS acidentes,
ROUND(
100.0 * COUNT(*) /
(SELECT COUNT(*) FROM dados_abertos_prfdatatran2025csv),2) AS cobertura_percentual
FROM dados_abertos_prfdatatran2025csv GROUP BY tipo_pista, fase_dia ORDER BY acidentes DESC;

-- 16-Calcular o efeito 'Lift' (razão entre a taxa de letalidade do tipo e a taxa média geral) 
SELECT tipo_acidente,
COUNT(*) AS acidentes,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS taxa_letalidade,
ROUND((100.0 * SUM(mortos) / SUM(pessoas))/(SELECT 100.0 * SUM(mortos) / SUM(pessoas)
FROM dados_abertos_prfdatatran2025csv),2) AS lift FROM dados_abertos_prfdatatran2025csv
GROUP BY tipo_acidente ORDER BY lift DESC;

-- 17-Criar a view 'vw_indicadores_mensais' para facilitar relatórios temporais
DROP VIEW IF EXISTS vw_indicadores_mensais;
CREATE VIEW vw_indicadores_mensais AS
SELECT strftime('%Y', data_inversa) AS ano,
strftime('%m', data_inversa) AS mes,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos
FROM dados_abertos_prfdatatran2025csv GROUP BY ano, mes;

-- 18-Criar a view 'vw_indicadores_uf_br' consolidadas por localização para uso em Dashboards.
DROP VIEW IF EXISTS vw_indicadores_uf_br;
CREATE VIEW vw_indicadores_uf_br AS
SELECT uf,br,
COUNT(*) AS acidentes,
SUM(mortos) AS mortos,
ROUND(100.0 * SUM(mortos) / SUM(pessoas), 2) AS percentual_letalidade
FROM dados_abertos_prfdatatran2025csv GROUP BY uf, br;

-- para ver
SELECT * FROM vw_indicadores_uf_br;