<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String Name=request.getParameter("name");
String Category=request.getParameter("Category");
String Price=request.getParameter("Price");
String active=request.getParameter("active");

try{
	Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("insert into products values(?,?,?,?,?)");
    ps.setString(1, id);
    ps.setString(2, Name);
    ps.setString(3, Category);
    ps.setString(4, Price);
    ps.setString(5, active);
    ps.executeUpdate();
    response.sendRedirect("addNewProduct.jsp?msg=done");
	
}
catch(Exception e)
{
    response.sendRedirect("addNewProduct.jsp?msg=wrong");
	
}

%>