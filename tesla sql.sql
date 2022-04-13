#TESLA STOCK ANALYSIS
#using mysql to anlyse Tesla stock
CREATE DATABASE tesla;
use tesla;
#creating a database for tesla stocks
create table teslastocks(
Date date,
Open INT NOT NULL,
High INT NOT NULL,
Low INT NOT NULL,
Close INT NOT NULL,
Adj_Close INT NOT NULL,
Volume INT NOT NULL);

#to display the created table
select * from teslastocks;

#INSERT VALUES INTO THE TABLE USING THE TABLE DATA IMPORT WIZARD

#to check for NULL VALUES FROM THE TABLLE
SELECT * FROM teslastockS
WHERE Open IS NULL AND Low IS NULL AND Close IS NULL AND High IS NULL AND Adj_Close IS NULL AND Volume IS NULL;



#SELECT AVERAGE OF OPEN HIGH LOW CLOSE ADJ_CLOSE VOLUME

SELECT avg(Open) FROM teslastocks;
SELECT avg(High) FROM teslastocks;
SELECT avg(low) FROM teslastocks;
SELECT avg(Close) FROM teslastocks;
SELECT avg(Adj_Close) FROM teslastocks;
SELECT avg(Volume) FROM teslastocks;

#total volume of teslastocks sold
SELECT sum(Volume) FROM teslastocks;



#SEPARATING EACH COLUMN BY DATE 
SELECT Open, Date from teslastocks;

SELECT High, Date from teslastocks;

SELECT Low, Date from teslastocks;

SELECT Close, Date from teslastocks;

SELECT Adj_Close, Date from teslastocks;

SELECT Volume, Date from teslastocks;

#SELECT HIGH LOW CLOSE AND OPEN <20 
SELECT * FROM teslastocks
where High<20 AND Low<20 AND Close <20 AND Open< 20;

#ARRANGING OPEN HIGH LOW CLOSE ADJ_CLOSE VOLUME BY DESCENDING ORDER
SELECT * FROM teslastocks
ORDER BY OPEN DESC, HIGH DESC, LOW DESC, CLOSE DESC, ADJ_CLOSE DESC,VOLUME DESC;

#ARRANGING OPEN HIGH LOW CLOSE ADJ_CLOSE VOLUME BY ASCENDING ORDER
SELECT * FROM teslastocks
ORDER BY OPEN ASC, HIGH ASC, LOW ASC, CLOSE ASC, ADJ_CLOSE ASC,VOLUME ASC;

#minimum of volume of tesla stocks sold
SELECT Min(Volume) AS smallestVolume
From teslastocks;

#maximun of volume of tesla stocks sold
SELECT Max(Volume) AS LargestVolume
From teslastocks;


















