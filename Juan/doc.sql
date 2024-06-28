CREATE TABLE Incidents (
  incidents_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  incident_type_id INT,
  presentation TEXT,
  severity VARCHAR(20),
  date_reported DATETIME,
  damage_to_device VARCHAR(100),
  what_damage VARCHAR(200),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (incident_type_id) REFERENCES Incident_types(incidenttype_id)
);

INSERT INTO Incidents (user_id, incident_type_id, presentation, severity, Date_reported, damage_to_device, what_damage) VALUES 
(1, 1, 'E-mail de phishing recebido e relatado', 'Médio', NOW(), 'Sistema de e-mail', 'Nenhum'),
(2, 2, 'Malware detectado no dispositivo do gerente de RH', 'Alta', NOW(), 'Estação de trabalho', 'Sistema comprometido'),
(3, 3, 'Violação de dados detectada no departamento financeiro', 'Crítico', NOW(), 'Database Server', 'Dados exfiltrados'),
(4, 4, 'Ataque DDoS no site da empresa', 'Alto', NOW(), 'Web Server', 'Website down'),
(5, 5, 'Ransomware arquivo de usuário criptografado', 'Crítico', NOW(), 'Local de trabalho', 'Arquivos criptografados');

-- Consultas Incidents 
SELECT * FROM Incidents;
SELECT * FROM Incidents WHERE date_reported > '2024-01-01';
SELECT * FROM Incidents WHERE severity = 'Alto';
