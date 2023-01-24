<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100), email varchar(100)primary key, MobileNumber bigint, SecurityQuestion varchar(200), Answer varchar(200), Password varchar(100), Address varchar(500),City Varchar(100), State varchar(100),Country varchar(100))";
	System.out.println(q1);
	st.execute(q1);
	System.out.println("Table Created");
	con.close();

	}
catch(Exception e)
{
	System.out.println(e);

	}
%>