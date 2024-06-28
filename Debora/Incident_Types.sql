CREATE TABLE Incident_types (
  incident_type_id INT AUTO_INCREMENT PRIMARY KEY,
  Incident_type_name VARCHAR(100),
  Incident_type_description TEXT,
  Incident_type_category VARCHAR(100),
  Incident_type_priority VARCHAR(100),
  Incident_type_creation_Date DATETIME,
  Incident_type_update_Date DATETIME,
  Incident_type_status VARCHAR(20)
);

INSERT INTO Incident_Types (incident_type_name, incident_type_description, incident_type_category, incident_type_priority, incident_type_creation_date, incident_type_update_date, incident_type_status) VALUES 
('Phishing', 'Tentativa de e-mail de phishing', 'Segurança de e-mail', 'Alto', NOW(), NOW(), 'Ativo'),
('Malware', 'Malware detectado no dispositivo', 'Segurança de endpoint', 'Crítico', NOW(), NOW(), 'Ativo'),
('Violação de dados', 'Acesso não autorizado a dados', 'Segurança de dados', 'Crítico', NOW(), NOW(), 'Ativo'),
('Ataque DDoS', 'Negação de serviço distribuída', 'Segurança de rede', 'Alto', NOW(), NOW(), 'Ativo'),
('Ransomware', 'Ataque de ransomware', 'Segurança de endpoint', 'Crítico', NOW(), NOW(), 'Ativo');

-- Consultas Incident_Types
SELECT * FROM Incident_types;
SELECT * FROM Incident_types WHERE IncidentType_priority = 'Crítico';
SELECT * FROM Incident_types WHERE Incidenttype_status = 'Ativo';
