CREATE TABLE Reduction_actions (
  action_id INT AUTO_INCREMENT PRIMARY KEY,
  department_id INT,
  incident_id INT,
  action_date DATETIME,
  action_taken VARCHAR(100),
  effectiveness VARCHAR(100),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id),
  FOREIGN KEY (incident_id) REFERENCES Incidents(incidents_id)
);

INSERT INTO Reduction_actions (department_id, incident_id, action_date, action_taken, effectiveness) VALUES 
(1, 1, NOW(), 'Treinamento de phishing para a equipe', 'Alto'),
(2, 2, NOW(), 'Software anti-malware instalado', 'Médio'),
(3, 3, NOW(), 'Controles de acesso reforçados', 'Alto'),
(4, 4, NOW(), 'Implemented DDoS protection', 'Medio'),
(5, 5, NOW(), 'Processos de backup aprimorados', 'Alto');

SELECT * FROM Departments;
SELECT * FROM Users;
SELECT * FROM Incident_types;
SELECT * FROM Incidents;
SELECT * FROM Incident_comments;
SELECT * FROM Reduction_actions;

-- Consultas Reduction_actions
SELECT * FROM Reduction_actions;
SELECT * FROM Reduction_actions WHERE incident_id = 1;
SELECT * FROM Reduction_actions WHERE department_id = 1;