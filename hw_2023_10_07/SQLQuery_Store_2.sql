CREATE TABLE [Buyers]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(MAX) NOT NULL CHECK([Name] <> N''),
	[SurName] NVARCHAR(MAX) NOT NULL CHECK([SurName] <> N'')
)

CREATE TABLE [Sellers]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(MAX) NOT NULL CHECK([Name] <> N''),
	[SurName] NVARCHAR(MAX) NOT NULL CHECK([SurName] <> N'')
)

CREATE TABLE [Sales]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[BuyersID] INT NOT NULL,
	[SellersID] INT NOT NULL,
	[Price] MONEY NOT NULL,
	[Date] DATE NOT NULL
)

ALTER TABLE [Sales]
ADD FOREIGN KEY ([BuyersID]) REFERENCES [Buyers]([ID])
ALTER TABLE [Sales]
ADD FOREIGN KEY ([SellersID]) REFERENCES [Sellers]([ID])

-------------------Buyers----------------
INSERT INTO Buyers(SurName, Name)
VALUES ('Носков', 'Николай');
INSERT INTO Buyers(SurName, Name)
VALUES ('Овчинников', 'Юрий');
INSERT INTO Buyers(SurName, Name)
VALUES ('Медяник', 'Устин');
INSERT INTO Buyers(SurName, Name)
VALUES ('Худобяк', 'Артур');
INSERT INTO Buyers(SurName, Name)
VALUES ('Погомий', 'Никита');
INSERT INTO Buyers(SurName, Name)
VALUES ('Кобзар', 'Нелли');
INSERT INTO Buyers(SurName, Name)
VALUES ('Лазарева', 'Ирина');
INSERT INTO Buyers(SurName, Name)
VALUES ('Чумак', 'Светлана');
INSERT INTO Buyers(SurName, Name)
VALUES ('Романова', 'Дарья');
INSERT INTO Buyers(SurName, Name)
VALUES ('Никифорова', 'Диана');

-------------------Sellers----------------
INSERT INTO Sellers(SurName, Name)
VALUES ('Житар', 'Марта');
INSERT INTO Sellers(SurName, Name)
VALUES ('Повалий', 'Ульяна');
INSERT INTO Sellers(SurName, Name)
VALUES ('Громов', 'Яков');
INSERT INTO Sellers(SurName, Name)
VALUES ('Вальковский', 'Яков');
INSERT INTO Sellers(SurName, Name)
VALUES ('Шаров', 'Илья');

-------------------Sales----------------
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (1, 1, 200.5, '2023-04-25');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (2, 1, 240, '2023-05-24');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (3, 2, 500.8, '2023-04-10');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (4, 3, 555, '2023-02-27');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (5, 1, 300, '2023-08-16');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (6, 4, 200, '2023-06-05');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (7, 5, 450, '2023-01-30');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (8, 2, 450, '2023-04-25');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (9, 3, 200.5, '2023-05-08');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (10, 4, 220, '2023-04-19');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (1, 5, 900, '2023-06-25');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (2, 1, 200.5, '2023-04-20');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (3, 2, 150, '2023-03-30');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (4, 3, 200, '2023-04-10');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (5, 4, 300, '2023-01-30');
INSERT INTO Sales(BuyersID, SellersID, Price, [Date])
VALUES (6, 5, 200.5, '2023-02-25');
