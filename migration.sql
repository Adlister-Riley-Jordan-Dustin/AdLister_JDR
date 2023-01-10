USE adlister_db;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL UNIQUE,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads  (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    image blob,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);
INSERT INTO users(username, email, password)
VALUES
    ('jordierw', 'jordan@gmail.com', 'password'),
    ('rileyk', 'riley@gmail.com', 'password'),
    ('dustinz', 'dustin@gmail.com', 'password');

INSERT INTO ads(user_id, id, title, description)
VALUES
    (1, 1, 'Giant Panda', 'Not sure why you would need this, but also...why not',
    (1,2,'Seven Ice Cream Cones', 'For when you are extra hungry and sad'),
    (2, 3, 'Decorative Throw Pillows', 'Unfortunately covered in Canadian Maple leafs'),
    (3, 4, 'Sega Genesis', 'If you bend the wire the right way it works!'),
    (5, 5, 'Giant Panda', 'Not sure why you would need this, but also...why not');
