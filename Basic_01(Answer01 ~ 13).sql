use madang;
select*from book;
select*from customer;
select*from orders;

	## ----- MySQL 기본문제 No.1 ~ 14 ----- ##

# 3 Tables (2 Entity + 1 Relation)
# book (4Column) : bookid , bookname , publisher , price
# customer (4Column) : custid , name , address , phone
# orders (5Column) : orderid , custid, bookid , saleprice , orderdate

	## ---------------------------------- ##

# 01. 도서번호가 1인 도서의 이름

SELECT bookname
FROM book 
WHERE bookid = 1;


# 02. 가격이 20,000원 이상인 도서의 이름

SELECT bookname 
FROM book 
WHERE price >= 20000;


# 03. 박지성(customer)의 총 구매액

SELECT sum(saleprice) 
FROM orders, customer 
WHERE orders.custid = customer.custid 
AND customer.name = '박지성';


# 04. 박지성이 구매한 도서의 수?

SELECT count(orders.custid) 
FROM orders, customer 
WHERE orders.custid = customer.custid 
AND customer.name = '박지성';


# 05. 박지성이 구매한 도서의 출판사 수?

SELECT count(publisher) 
FROM book, orders, customer 
WHERE book.bookid = orders.bookid AND orders.custid = customer.custid 
AND name = '박지성';

