CREATE TABLE Departments (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  token VARCHAR(20),
  manager VARCHAR(100),
  number_of_employees INT,
  commentary TEXT
);

INSERT INTO Departments (token, manager, number_of_employees, commentary) VALUES 
('IT', 'Isaias', '25', 'Departamento de Tecnologia da Informação'),
('HR', 'Natália', '15', 'Departamento de Recursos Humanos'),
('FIN', 'Debora', '20', 'Departamento Financeiro'),
('OPS', 'Thiago', '30', 'Departamento de Operações'),
('SEC', 'Juan', '10', 'Departamento de Segurança');

SELECT * FROM Departments;
SELECT * FROM Departments WHERE number_of_employees > '20';
SELECT * FROM Departments WHERE token = 'IT';
