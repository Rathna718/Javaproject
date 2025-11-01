use project;

CREATE TABLE clothes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50),
    color VARCHAR(50),
    brand VARCHAR(50),
    image_url VARCHAR(255)
);

CREATE TABLE outfits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE outfit_clothes (
    outfit_id INT,
    clothes_id INT,
    FOREIGN KEY (outfit_id) REFERENCES outfits(id),
    FOREIGN KEY (clothes_id) REFERENCES clothes(id)
);