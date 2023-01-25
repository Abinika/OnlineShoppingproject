<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% 
String id=request.getParameter("id");
String Name=request.getParameter("name");
String Category=request.getParameter("category");
String Price=request.getParameter("price");
String Active=request.getParameter("active");
try{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
st.executeUpdate("update products set name='"+Name+"', category='"+Category+"', price='"+Price+"', active='"+Active+"' where id='"+id+"'");
if(Active.equals("No"))  
{
st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");	
}
response.sendRedirect("admin/allProductEditProduct.jsp?msg=done");   
}
catch(Exception e)
{
System.out.println(e);	
response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}%>