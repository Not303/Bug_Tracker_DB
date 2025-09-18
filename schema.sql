--Create Developer Table
CREATE TABLE Developers (
    dev_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    team VARCHAR(50)
);

--Create Bugs Table
CREATE TABLE Bugs (
    bug_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    severity ENUM('Low', 'Medium', 'High', 'Critical') NOT NULL,
    status ENUM('Open', 'In Progress', 'Closed', 'Reopened') DEFAULT 'Open',
    dev_id INT,
    created_at DATE NOT NULL,
    closed_at DATE,
    FOREIGN KEY (dev_id) REFERENCES Developers(dev_id)
);
