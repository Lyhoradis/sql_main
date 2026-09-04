mysql> USE statues_shop
Database changed
mysql> CREATE TABLE statues (
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(100) NOT NULL,
    -> material VARCHAR (50),
    -> price DECIMAL (10,2),
    -> quantity INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO statues (name, material, price, quantity)
    -> VALUES ('Обезьяна', 'фарфор', 600, 2);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM statues;
+----+----------+----------+--------+----------+
| id | name     | material | price  | quantity |
+----+----------+----------+--------+----------+
|  1 | Обезьяна | фарфор   | 600.00 |        2 |
+----+----------+----------+--------+----------+
1 row in set (0.00 sec)

mysql> INSERT INTO statues (name, material, price, quantity) VALUES
    -> ('дельфины', 'фарфор', 800.00, 2),
    -> ('слоненок', 'фарфор', 740.00, 2),
    -> ('слоны','гипс', 800.00, 1);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM statues;
+----+----------+----------+--------+----------+
| id | name     | material | price  | quantity |
+----+----------+----------+--------+----------+
|  1 | Обезьяна | фарфор   | 600.00 |        2 |
|  2 | дельфины | фарфор   | 800.00 |        2 |
|  3 | слоненок | фарфор   | 740.00 |        2 |
|  4 | слоны    | гипс     | 800.00 |        1 |
+----+----------+----------+--------+----------+
4 rows in set (0.00 sec)

mysql>