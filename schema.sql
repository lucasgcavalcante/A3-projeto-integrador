-- Criação do banco de dados
CREATE DATABASE sistema_clinico;
-- Conecte-se ao banco com: \c sistema_clinico

-- Tabela de Pacientes
CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Profissionais
CREATE TABLE profissionais (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Tabela de Consultas
CREATE TABLE consultas (
    id SERIAL PRIMARY KEY,
    paciente_id INTEGER NOT NULL REFERENCES pacientes(id) ON DELETE CASCADE,
    profissional_id INTEGER NOT NULL REFERENCES profissionais(id),
    data_hora TIMESTAMP NOT NULL,
    observacoes TEXT
);
