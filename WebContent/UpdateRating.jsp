<%-- 
    Document   : UpdateRating
    Created on : Feb 7, 2018, 3:58:31 PM
    Author     : Acer
--%>
<%@page import="java.sql.*"  %>
<%@page import="com.java.ConnectionProvider" %>
<%String productname=request.getParameter("product"); 
String rating=request.getParameter("rating");
try{
    Connection con=ConnectionProvider.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("update productpost set rating='"+rating+"'where productname='"+productname+"'");
    if(i>0){%>
    <script type="text/javascript">
        window.alert("Thanks For Your Rating");
        window.location="ViewProductDetails.jsp";
        </script>
    <%}
}catch(Exception e){
    out.println(e);
}%>