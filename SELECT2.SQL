---tutores 
SELECT 
    `nome`AS 'nome do tutor',
    `cidade`AS 'cidade'
FROM `tutores`;

 --Veterinários
SELECT
`nome` AS 'Veterinário(a)',
`especialidade` AS 'Especialidade'
FROM `Veterinarios`;

--Animais e Peso
SELECT
`nome` AS 'Nome do Animal',
`peso_kg AS` 'Peso (kg)'
FROM `Animais`;

---Consultas
SELECT
`dtConsulta` AS 'Data da Consulta',
`custo` AS 'Valor (R$)'
FROM `Consultas`;

---Seção 2 — Ordenação de Resultados (ORDER BY)
---5 — Ordem Alfabética (ASC)
SELECT `nome`
FROM `Tutores`
ORDER BY `nome` ASC;

---6 — Ordem Alfabética (DESC)
SELECT `nome`
FROM `Animais`
ORDER BY `nome` DESC;

---7 — Animais Mais Pesados (DESC)
SELECT
`nome`,
`peso_kg`
FROM `Animais`
ORDER BY `peso_kg` DESC;

--8 — Consultas Mais Baratas (ASC)
SELECT
`motivo`,
`custo`
FROM `Consultas`
ORDER BY `custo` ASC;

---9 — Animais Mais Novos
SELECT
`nome`,
`dtNascimento`
FROM `Animais`
ORDER BY `dtNascimento` DESC;

--10 — Animais Mais Velhos
SELECT
`nome`,
`dtNascimento`
FROM `Animais`
ORDER BY `dtNascimento` ASC;

---11 — Consultas Recentes
SELECT
`motivo`,
`dtConsulta`
FROM `Consultas`
ORDER BY `dtConsulta` DESC;

---12 — Ordem Dupla
SELECT
`nome`,
`especie`
FROM `Animais`
ORDER BY `especie` ASC, `nome` ASC;

--13 — Os 5 Primeiros Animais
SELECT *
FROM `Animais`
ORDER BY `idAnimal` ASC
LIMIT 5;

---14 — As 3 Primeiras Consultas
--Usando idConsulta:
SELECT *
FROM `Consultas`
ORDER BY `idConsulta` ASC
LIMIT 3;

--15 — Paginação — Página 1
--Dois tutores por página:
SELECT *
FROM `Tutores`
ORDER BY `idTutor` ASC
LIMIT 2;

--16 — Paginação — Página 2
SELECT *
FROM `Tutores`
ORDER BY `idTutor` ASC
LIMIT 2, 2;

--17 — O Animal Mais Pesado
SELECT
`nome` AS 'Animal Mais Pesado',
`peso_kg` AS 'Peso (kg)'
FROM `Animais`
ORDER BY `peso_kg` DESC
LIMIT 1;


--18 — A Consulta Mais Cara
SELECT
`motivo` AS 'Motivo',
`diagnostico` AS 'Diagnóstico',
`custo` AS 'Valor'
FROM `Consultas`
ORDER BY custo DESC
LIMIT 1;


19 — Top 3 Animais Mais Novos
SELECT
`nome` AS 'Nome',
`especie` AS 'Espécie',
`dtNascimento` AS 'Nascimento'
FROM `Animais`
ORDER BY `dtNascimento` DESC
LIMIT 3;

--20 — As 2 Consultas Mais Antigas
SELECT
`dtConsulta` AS 'Data',
`motivo` AS 'Motivo'
FROM `Consultas`
ORDER BY `dtConsulta` ASC
LIMIT 2;