SET PAGESIZE 0
SET LINESIZE 180
SET SERVEROUTPUT ON
SET ECHO ON

SPOOL Kemaloutput.log;
DROP TABLE Movies CASCADE CONSTRAINT;
DROP TABLE Academy_Awards CASCADE CONSTRAINT;
COMMIT;

CREATE TABLE Movies
(
	ID 	NUMBER(11) PRIMARY KEY NOT NULL,
	Distributors_ID 	NUMBER(11) NOT NULL,
  Title VARCHAR2(255) NOT NULL,
  Type VARCHAR2(255) NOT NULL,
  Running_Length VARCHAR2(255) NOT NULL,
  Rating NUMBER(5),
  Factory_Price NUMBER(5) NOT NULL
);
COMMIT;

CREATE TABLE Academy_Awards
(
	Award_ID NUMBER(11) PRIMARY KEY NOT NULL,
	Category VARCHAR(255) NOT NULL,
	Winner VARCHAR(255) NOT NULL
);
COMMIT;

INSERT INTO Movies
VALUES
(19,5529,'Will','Romantic',5,3,7);
INSERT INTO Movies
VALUES
(20,5530,'Lulu','Alergic',4,4,8);
INSERT INTO Movies
VALUES
(21,5531,'Friends','Romantic',3,4,9);
COMMIT;
INSERT INTO Movies
VALUES
(22,5532,'Fire','Romantic',4,4,8);
COMMIT;
INSERT INTO Movies
VALUES
(23,5533,'Baba','Tragegy',3,4,9);
COMMIT;
INSERT INTO Movies
VALUES
(24,5534,'Fun','Romantic',4,4,9);
COMMIT;

INSERT INTO Academy_Awards
VALUES
(1,'world','one times');
COMMIT;
INSERT INTO Academy_Awards
VALUES
(2,'Black Producers','Two times');
COMMIT;
INSERT INTO Academy_Awards
VALUES
(3,'Young Movie Association','Four times');
COMMIT;
INSERT INTO Academy_Awards
VALUES
(4,'Dolphine Movie Award','One times');
COMMIT;
INSERT INTO Academy_Awards
VALUES
(5,'Asian','Ten times');
COMMIT;

SELECT *
FROM Movies;
COMMIT;
SELECT *
FROM Academy_Awards;
COMMIT;
UPDATE Academy_Awards
	SET Category='News Media',
	Winner='None'
WHERE Award_ID=3;
UPDATE Movies
	SET Title='One Nation',
	Type='Romantic'
WHERE ID=23;
SET SERVEROUTPUT OFF
SPOOL OFF;
