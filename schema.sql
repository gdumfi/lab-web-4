CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL,
    surname VARCHAR(50),
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    role_id INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE IF NOT EXISTS role (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(200)
);

INSERT INTO role (name, description) VALUES ('admin', 'Администратор');
INSERT INTO role (name, description) VALUES ('user', 'Пользователь');

INSERT INTO user (login, password, surname, first_name, middle_name, role_id)
VALUES ('admin', 'password123', NULL, 'admin', NULL, 1);

INSERT INTO user (login, password, surname, first_name, middle_name, role_id)
VALUES ('user1', 'password1234', NULL, 'user1', NULL, 2);
