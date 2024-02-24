/*ID AND SHOP NAME RELATED
ITEM ID AND ITEM NAME RELATED*/

/*1. WHAT ARE THE TOP 5 CATEGORY OF FOOD ORDERED MOST PRE DIWALI*/
select CATEGORY, count(CATEGORY) as COUNT_CATEGORY
from pre_diwali
group by CATEGORY
order by COUNT_CATEGORY DESC
LIMIT 5;

/*2. WHAT ARE THE TOP 5 CATEGORY OF FOOD ORDERED MOST POST DIWALI*/
select CATEGORY, count(CATEGORY) as COUNT_CATEGORY
from post_diwali
group by CATEGORY
order by COUNT_CATEGORY DESC
LIMIT 5;

/*3. WHICH CITY HAS THE MOST NO OF ORDERS PRE DIWALI (SHOW TOP 5 CITIES ONLY)*/
select city, count(city) as COUNT_CITY
from pre_diwali
group by city
order by COUNT_CITY DESC
LIMIT 5;

/*4. WHICH CITY HAS THE MOST NO OF ORDERS POST DIWALI (SHOW TOP 5 CITIES ONLY)*/
select city, count(city) as COUNT_CITY
from post_diwali
group by city
order by COUNT_CITY DESC
LIMIT 5;

/*5. WHAT ARE THE TOP 10 SHOPS WITH MOST NO OF ORDERS PRE DIWALI*/
select NAME, count(NAME) as ORDERs_PLACED
from pre_diwali
group by NAME
order by ORDERs_PLACED DESC
LIMIT 10;

/*6. WHAT ARE THE TOP 10 SHOPS WITH MOST MO OF ORDERS POST DIWALI*/
select NAME, count(NAME) as ORDERs_PLACED
from post_diwali
group by NAME
order by ORDERs_PLACED DESC
LIMIT 10;

/*7. HOW MANY ORDERS PLACED FROM TOP SHOP WHICH HAS THE MAX NO OF ORDERS PRE DIWALI*/
select NAME, count(NAME) as ORDERs_PLACED, sum(orders) as TOTAL_NO_OF_ORDERS
from pre_diwali
group by NAME
order by ORDERs_PLACED DESC
LIMIT 10;

/*8. HOW MANY ORDERS PLACED FROM TOP SHOP WHICH HAS THE MAX NO OF ORDERS POST DIWALI*/
select NAME, count(NAME) as ORDERs_PLACED, sum(orders) as TOTAL_NO_OF_ORDERS
from post_diwali
group by NAME
order by ORDERs_PLACED DESC
LIMIT 10;

/*9. WHICH SHOP HAS THE LOWEST NO OF ORDERS PRE DIWALI*/
select NAME, count(NAME) as ORDERs_PLACED, sum(orders) as LOWEST_NO_OF_ORDERS
from pre_diwali
group by NAME
order by ORDERs_PLACED ASC
LIMIT 1;

/*10 WHICH SHOP HAS THE LOWEST NO OF ORDERS POST DIWALI*/
select NAME, count(NAME) as ORDERs_PLACED, sum(orders) as LOWEST_NO_OF_ORDERS
from post_diwali
group by NAME
order by ORDERs_PLACED ASC
LIMIT 1;

/*11. TOP 10 ITEMS ORDERED (MOST ORDERS PLACED) PRE DIWALI*/
select ITEM_NAME, count(ITEM_NAME) as ORDERs_PLACED, sum(QTY) as TOTAL_NO_OF_QUANTITY
from pre_diwali
group by ITEM_NAME
order by ORDERs_PLACED DESC
LIMIT 10;

/*12. TOP 10 ITEMS ORDERS (MOST ORDERS PLACED) POST DIWALI*/
select ITEM_NAME, count(ITEM_NAME) as ORDERs_PLACED, sum(QTY) as TOTAL_NO_OF_QUANTITY
from post_diwali
group by ITEM_NAME
order by ORDERs_PLACED DESC
LIMIT 10;

/*13. WHICH HOUR OF THE DAY HAS THE MAX ORDERS PLACED PRE DIWALI*/
select Hour_of_the_day, count(Hour_of_the_day) as NO_OF_ORDERS
from pre_diwali
group by Hour_of_the_day
order by NO_OF_ORDERS DESC
LIMIT 1;

/*14. WHICH HOUR OF THE DAY HAS THE MAX ORDERS PLACED POST DIWALI*/
select Hour_of_the_day, count(Hour_of_the_day) as NO_OF_ORDERS
from post_diwali
group by Hour_of_the_day
order by NO_OF_ORDERS DESC
LIMIT 1;

/*15. WHICH HOUR OF THE DAY HAS THE LOWEST NO OF ORDERS PRE DIWALI*/
select Hour_of_the_day, count(Hour_of_the_day) as NO_OF_ORDERS
from pre_diwali
group by Hour_of_the_day
order by NO_OF_ORDERS ASC
LIMIT 1;

/*16. WHICH HOUR OF THE DAY HAS THE LOWEST NO OF ORDERS POST DIWALI*/
select Hour_of_the_day, count(Hour_of_the_day) as NO_OF_ORDERS
from post_diwali
group by Hour_of_the_day
order by NO_OF_ORDERS ASC
LIMIT 1;

/*17. HOW MANY ORDERS PLACED BETWEEN 14-10-2019 TO 17-10-2019 (PRE DIWALI)*/
SELECT COUNT(ORDERS) AS TOTAL_NO_OF_ORDERS_IN_THE_PERIOD
FROM pre_diwali
WHERE NEWDATE BETWEEN '2019-10-14' AND '2019-10-17';

/*18. HOW MANY ORDERS PLACED BETWEEN 18-10-2019 TO 21-10-2019 (POST DIWALI)*/
SELECT COUNT(ORDERS) AS TOTAL_NO_OF_ORDERS_IN_THE_PERIOD
FROM post_diwali
WHERE NEWDATE BETWEEN '2019-10-18' AND '2019-10-21';