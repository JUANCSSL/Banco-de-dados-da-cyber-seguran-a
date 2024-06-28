[21:48, 27/06/2024] .: CREATE TABLE Users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  department_id INT,
  username VARCHAR(50),
  passcode VARCHAR(50),
  email VARCHAR(50),
  job_title VARCHAR(50),
  circumstance VARCHAR(50),
  phone_number VARCHAR(50),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
[21:49, 27/06/2024] .: INSERT INTO Users (Department_id, username, passcode, email, job_title, circumstance, phone_Number) VALUES 
(1, 'Zaza', 'password123', 'zaza@example.com', 'Gerenciamento de TI', 'Ativo', '(21) 9989-9876'),
(2, 'Nat', 'password123', 'NAth@example.com', 'Gerenciamento de RH', 'Ativo', '(21) 9999-5686'),
(3, 'Debinha', 'password123', 'Debinha@example.com', 'Gerente Financeiro', 'Ativo', '(21) 9959-5480'),
(4, 'TH', 'password123', 'THwn@example.com', 'Gerente das operações', 'Ativo', '(21) 9329-5796'),
(5, 'Erro J', 'password123', 'ErroJte@example.com', 'Gerente da segurança', 'Ativo', '(21) 9864-5623');
[21:57, 27/06/2024] .: -- Consultas Users 
SELECT * FROM Users;
SELECT * FROM Users WHERE department_id = 1;
SELECT * FROM Users WHERE circumstance = 'Ativo';