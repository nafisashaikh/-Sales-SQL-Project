INSERT INTO Customers VALUES
(1, 'Nafis Shaikh', 'Mumbai'),
(2, 'Rahul Sharma', 'Delhi'),
(3, 'Sneha Patil', 'Pune'),
(4, 'John Mathew', 'Bangalore'),
(5, 'Neha Verma', 'Mumbai');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Phone', 'Electronics', 20000),
(103, 'Headphones', 'Accessories', 2000),
(104, 'Keyboard', 'Accessories', 1500),
(105, 'Mouse', 'Accessories', 800);

INSERT INTO Orders VALUES
(1001, 1, '2025-01-10'),
(1002, 2, '2025-02-15'),
(1003, 3, '2025-03-05'),
(1004, 1, '2025-03-20'),
(1005, 5, '2025-04-02');

INSERT INTO Order_Details VALUES
(1001, 101, 1),
(1001, 103, 2),
(1002, 102, 1),
(1003, 101, 1),
(1004, 104, 3),
(1005, 105, 2);