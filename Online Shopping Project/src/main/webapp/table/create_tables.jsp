<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100), email varchar(100)primary key, MobileNumber bigint, SecurityQuestion varchar(200), Answer varchar(200), Password varchar(100), Address varchar(500),City Varchar(100), State varchar(100),Country varchar(100))";
	String q2 = "create table products(id int, name varchar(100), category varchar(100), price bigint, active varchar(100))";
	String q3 = "create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),City Varchar(100),State varchar(100),Country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(100))";

	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);

	//st.execute(q1);
	//st.execute(q2);
      st.execute(q3);
	System.out.println("Table Created");
	con.close();

	}
catch(Exception e)
{
	System.out.println(e);

	}
%>