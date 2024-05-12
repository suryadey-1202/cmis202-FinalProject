USE trafficDb;

CREATE TABLE Nodes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) DEFAULT 'Intersection',
    description TEXT
);

CREATE TABLE Edges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_node INT,
    end_node INT,
    distance FLOAT NOT NULL,
    speed_limit INT NOT NULL,
    lanes INT NOT NULL,
    road_type VARCHAR(50) DEFAULT 'Highway',
    description TEXT,
    FOREIGN KEY (start_node) REFERENCES Nodes(id),
    FOREIGN KEY (end_node) REFERENCES Nodes(id)
);

CREATE TABLE Traffic (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edge_id INT,
    date DATE NOT NULL,
    average_speed FLOAT,
    vehicle_count INT,
    FOREIGN KEY (edge_id) REFERENCES Edges(id)
);

CREATE TABLE RoadConditions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edge_id INT,
    date DATE NOT NULL,
    traffic_condition VARCHAR(50) NOT NULL,
    details TEXT,
    FOREIGN KEY (edge_id) REFERENCES Edges(id)
);


