-- Pacientes
INSERT INTO pacientes (nome, cpf, data_nascimento, telefone, email, endereco) VALUES
('Lucas Cavalcante', '111.222.333-44', '1998-07-01', '(81) 99999-0000', 'lucas@email.com', 'Av. Recife, 100'),
('Joana Lima', '555.666.777-88', '1985-03-10', '(81) 98888-1111', 'joana@email.com', 'Rua das Mangueiras, 23');

-- Profissionais
INSERT INTO profissionais (nome, crm, telefone, email) VALUES
('Dr. Pedro Martins', 'CRM123456', '(81) 91111-2222', 'pedro@clinica.com'),
('Dra. Carla Souza', 'CRM654321', '(81) 92222-3333', 'carla@clinica.com');

-- Consultas
INSERT INTO consultas (paciente_id, profissional_id, data_hora, observacoes) VALUES
(1, 1, '2025-07-12 09:00:00', 'Consulta de rotina.'),
(2, 2, '2025-07-13 14:30:00', 'Avaliação inicial.');
