# Curso de Inglês - Banco de Dados

Este repositório contém o esquema SQL e exemplos de consultas para um sistema de gerenciamento de uma escola de inglês. Este banco de dados foi desenvolvido como parte do curso de banco de dados da AlgaWorks, sendo a atividade/desafio proposto durante o curso.

## Estrutura do Banco de Dados

### Tabelas

*1. professor*

- id: INT AUTO_INCREMENT, PRIMARY KEY
- nome: VARCHAR(100), NOT NULL

*2. curso*

- id: INT AUTO_INCREMENT, PRIMARY KEY
- nome: VARCHAR(100), NOT NULL
- id_professor: INT, NOT NULL, FOREIGN KEY referenciando professor(id)

*3. aluno*

- id: INT AUTO_INCREMENT, PRIMARY KEY
- nome: VARCHAR(100), NOT NULL
- data_matricula: DATE, NOT NULL
- valor_pago: DECIMAL(10, 2)

*4. aluno_curso*

- id_aluno: INT, NOT NULL, FOREIGN KEY referenciando aluno(id)
- id_curso: INT, NOT NULL, FOREIGN KEY referenciando curso(id)
- PRIMARY KEY (id_aluno, id_curso)

## Scripts SQL

### Criação das Tabelas
```sql
CREATE TABLE professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES professor(id)
);

CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_matricula DATE NOT NULL,
    valor_pago DECIMAL(10, 2)
);

CREATE TABLE aluno_curso (
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    PRIMARY KEY (id_aluno, id_curso),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);
```

### Inserção de Dados
```sql
INSERT INTO professor (nome) VALUES ('Professor A'), ('Professor B');

INSERT INTO curso (nome, id_professor) VALUES ('Inglês Básico', 1), ('Inglês Avançado', 2);

INSERT INTO aluno (nome, data_matricula, valor_pago) VALUES 
('Aluno 1', '2024-01-05', 100.00),
('Aluno 2', '2024-01-15', 200.00),
('Aluno 3', '2024-02-20', 150.00);

INSERT INTO aluno_curso (id_aluno, id_curso) VALUES 
(1, 1),
(2, 1),
(3, 2),
(1, 2);

```

### Consultas de Exemplo
*Liste os nomes dos alunos que fizeram matrícula em Janeiro de 2024*
```sql
SELECT nome 
FROM aluno 
WHERE data_matricula BETWEEN '2024-01-01' AND '2024-01-31';
```

*Liste os nomes dos cursos de um determinado professor*
```sql
SELECT c.nome 
FROM curso c 
JOIN professor p ON c.id_professor = p.id 
WHERE p.nome = 'Professor A';
```

*Liste os nomes dos alunos de um determinado curso*
```sql
SELECT a.nome 
FROM aluno a 
JOIN aluno_curso ac ON a.id = ac.id_aluno 
JOIN curso c ON ac.id_curso = c.id 
WHERE c.nome = 'Inglês Básico';
```

## Alterações e Índices

*Adicionar colunas extras*

```sql
ALTER TABLE aluno ADD email VARCHAR(100);

ALTER TABLE curso ADD descricao TEXT;
```

*Criação de Índices*

```sql
CREATE INDEX idx_aluno_nome ON aluno(nome);
CREATE INDEX idx_curso_nome ON curso(nome);
```

## Funções Agregadas

*Total recebido por dia de matrícula*

```sql
SELECT data_matricula, SUM(valor_pago) AS total_recebido 
FROM aluno 
GROUP BY data_matricula;
```

## Subselect

*Liste os nomes dos alunos que já fizeram pelo menos um curso*

```sql
SELECT nome 
FROM aluno 
WHERE id IN (SELECT DISTINCT id_aluno FROM aluno_curso);
```

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests para adicionar novas funcionalidades, corrigir bugs ou melhorar a documentação.

## Licença

Este projeto está licenciado sob os termos da licença MIT. Veja o arquivo LICENSE para mais detalhes.

### Obrigado por visitar e ler meu repositório!

![Agradecimento](https://media.giphy.com/media/xT9IgG50Fb7Mi0prBC/giphy.gif)

<br></br>
CREDENCIAL:⬇️
<br></br>
[https://app.algaworks.com/certs/QDWLNM3WEX](https://app.algaworks.com/certs/6HHHGWWGXK)

![Screenshot_2](https://github.com/eykemesquita/banco-de-dados-iniciante/assets/88750399/0d62d745-6ced-458f-aa5b-58d1dac7b96f)

