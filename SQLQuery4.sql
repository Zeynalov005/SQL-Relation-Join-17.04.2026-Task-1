CREATE TABLE Categories (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Meals (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

-- Categories
INSERT INTO Categories (id, name) VALUES
(1, 'Fast Food'),
(2, 'Dessert'),
(3, 'Drinks'),
(4, 'Salads');

-- Meals
INSERT INTO Meals (id, name, category_id) VALUES
(1, 'Burger', 1),
(2, 'Pizza', 1),
(3, 'Ice Cream', 2),
(4, 'Cola', 3),
(5, 'Caesar Salad', 4),
(6, 'Steak', NULL),       
(7, 'Soup', NULL);     

SELECT Meals.name AS meal, Categories.name AS category
FROM Meals
INNER JOIN Categories
ON Meals.category_id = Categories.id;

SELECT Meals.name AS meal, Categories.name AS category
FROM Meals
LEFT JOIN Categories
ON Meals.category_id = Categories.id;

SELECT *
FROM Meals
WHERE category_id IS NULL;

SELECT Categories.*
FROM Categories
LEFT JOIN Meals
ON Categories.id = Meals.category_id
WHERE Meals.id IS NULL;

SELECT *
FROM Meals
FULL JOIN Categories
ON Meals.category_id = Categories.id;