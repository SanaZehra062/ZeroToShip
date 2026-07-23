CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    department VARCHAR(100),
    skills TEXT
);

CREATE TABLE Projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    creator_id INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    required_skills TEXT,
    status VARCHAR(10) DEFAULT 'Open',
    FOREIGN KEY (creator_id) REFERENCES Users(user_id)
);

CREATE TABLE Applications (
    application_id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_id INTEGER NOT NULL,
    applicant_id INTEGER NOT NULL,
    status VARCHAR(10) DEFAULT 'Pending',
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (applicant_id) REFERENCES Users(user_id)
);