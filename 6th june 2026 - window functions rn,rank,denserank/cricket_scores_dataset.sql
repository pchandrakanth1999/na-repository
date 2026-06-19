CREATE TABLE cricket_score (
    player_name VARCHAR(50),
    team VARCHAR(30),
    match_date DATE,
    runs INT
);

INSERT INTO cricket_score VALUES
('Virat','India','2024-01-01',85),
('Rohit','India','2024-01-01',70),
('Gill','India','2024-01-01',85),
('Rahul','India','2024-01-02',60),

('Warner','Australia','2024-01-01',90),
('Smith','Australia','2024-01-01',90),
('Maxwell','Australia','2024-01-02',75),
('Head','Australia','2024-01-02',50),

('Babar','Pakistan','2024-01-01',88),
('Rizwan','Pakistan','2024-01-02',88),
('Afridi','Pakistan','2024-01-02',40);

--RowNumber()
--Rank
--Dense_rank
--Lag
--Lead