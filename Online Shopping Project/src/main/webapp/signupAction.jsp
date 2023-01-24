<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String Email=request.getParameter("Email");
String Mobilenumber=request.getParameter("Mobilenumber");
String SecurityQuestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String City="";
String State="";
String Country="";

try{
	Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, Email);
    ps.setString(3, Mobilenumber);
    ps.setString(4, SecurityQuestion);
    ps.setString(5, answer);
    ps.setString(6, password);
    ps.setString(7, address);
    ps.setString(8, City);
    ps.setString(9, State);
    ps.setString(10, Country);
    ps.executeUpdate();
    response.sendRedirect("signup.jsp?msg=valid");
}

catch(Exception e)
{
	System.out.println(e);
    response.sendRedirect("signup.jsp?msg=invalid");

	}



%>