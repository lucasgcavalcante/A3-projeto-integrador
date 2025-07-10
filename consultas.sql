-- Todos os pacientes
SELECT * FROM pacientes;

-- Consultas com nome do paciente e do profissional
SELECT 
    c.id,
    p.nome AS paciente,
    pr.nome AS profissional,
    c.data_hora,
    c.observacoes
FROM consultas c
JOIN pacientes p ON c.paciente_id = p.id
JOIN profissionais pr ON c.profissional_id = pr.id
ORDER BY c.data_hora;

-- Consultas de um paciente específico
SELECT 
    p.nome AS paciente,
    c.data_hora,
    pr.nome AS profissional,
    c.observacoes
FROM consultas c
JOIN pacientes p ON c.paciente_id = p.id
JOIN profissionais pr ON c.profissional_id = pr.id
WHERE p.nome ILIKE '%lucas%';

-- Total de consultas realizadas
SELECT COUNT(*) AS total_consultas FROM consultas;

-- Atualizar telefone de um paciente
UPDATE pacientes
SET telefone = '(81) 98888-4444'
WHERE cpf = '111.222.333-44';

-- Deletar uma consulta
DELETE FROM consultas
WHERE id = 1;
