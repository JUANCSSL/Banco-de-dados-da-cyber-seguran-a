CREATE TABLE Incident_comments (
  comment_id INT AUTO_INCREMENT PRIMARY KEY,
  incident_id INT,
  user_id INT,
  commentary TEXT,
  make DATETIME,
  improvement DATETIME,
  FOREIGN KEY (incident_id) REFERENCES Incidents(incidents_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Incident_Comments (incident_id, user_id, commentary, make, improvement) VALUES 
(1, 1, 'Investigando a origem do e-mail de phishing', NOW(), NOW()),
(2, 2, 'Verificação de malware no dispositivo', NOW(), NOW()),
(3, 3, 'Notificar as partes afetadas sobre violação de dados',NOW(), NOW()),
(4, 4, 'Mitigação de ataques DDoS', NOW(), NOW()),
(5, 5, 'Restauração de arquivos a partir do backup', NOW(), NOW());


SELECT * FROM Incident_comments;
SELECT * FROM Incident_comments WHERE incident_id = 1;
SELECT * FROM Incident_comments WHERE user_id = 1;
