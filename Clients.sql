SET PAGESIZE 0
SET LINESIZE 180
SET SERVEROUTPUT ON

DROP TABLE Clients CASCADE CONSTRAINT;

COMMIT;
CREATE TABLE Clients
(    ClientID INT NOT NULL,
     ClientLastName VARCHAR(25) NOT NULL,
     ClientFirstName VARCHAR(25) NOT NULL,
     ClientAge INT NOT NULL,
     ClientGender CHAR(1),
     ClientBeltRank VARCHAR(25),
     CONSTRAINT Client_PK PRIMARY KEY (ClientID));
COMMIT;

INSERT INTO Clients
(    ClientID,
     ClientLastName,
     ClientFirstName,
     ClientAge,
     ClientGender,
     ClientBeltRank)
VALUES
(    1,
     'Rodriguez',
     'Juan',
     21,
     'M',
     'Brown-Stripe');
COMMIT;

INSERT INTO Clients
(    ClientID,
     ClientLastName,
     ClientFirstName,
     ClientAge,
     ClientGender,
     ClientBeltRank)
VALUES
(    2,
     'Loman',
     'Nate',
     28,
     'M',
     'Brown');
COMMIT;
INSERT INTO Clients
(    ClientID,
     ClientLastName,
     ClientFirstName,
     ClientAge,
     ClientGender,
     ClientBeltRank)
VALUES
(    3,
     'White',
     'Rick',
     32,
     'M',
     'Black');
COMMIT;

INSERT INTO Clients
(    ClientID,
     ClientLastName,
     ClientFirstName,
     ClientAge,
     ClientGender,
     ClientBeltRank)
VALUES
(    4,
     'Sullivan',
     'Anna',
     29,
     'F',
     'Green');
COMMIT;

SELECT * FROM Clients;
COMMIT;

SELECT AVG(ClientAge) "Average Age" FROM Clients;
COMMIT;

SELECT ROUND(AVG(ClientAge)) "Rounded Average Age" FROM Clients;
COMMIT;
SELECT SQRT(AVG(ClientAge)) "Rounded Average Age" FROM Clients;
COMMIT;

SELECT MAX(ClientAge) "Youngest Client" FROM Clients;
COMMIT;


SET SERVEROUTPUT OFF
