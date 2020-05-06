<%-- 
    Document   : ReviewDB
    Created on : Feb 6, 2018, 2:35:43 PM
    Author     : kishan
--%>

<%@page import="java.sql.*"%>
<%@page import="com.java.ConnectionProvider" %>
<% 
String productname=request.getParameter("product");
String manufacture=request.getParameter("manufacture");
String productreview=request.getParameter("review");
String opinion=request.getParameter("opinion");

try{
  Connection con=ConnectionProvider.getConnection();
Statement st=con.createStatement();
int i=st.executeUpdate("insert into review values('"+productname+"','"+manufacture+"','"+productreview+"','"+opinion+"')");
if(i>0){%>
<script type="text/javascript">
    window.alert("Review Posted Successfully");
    window.location="ViewProductDetails.jsp";
    </script>
    
<%}
else{%>
<script type="text/javascript">
    window.alert("Review Posted Failed");
    window.location="ViewProductDetails.jsp";
    </script>
   
<%}
}catch(Exception e){
    out.println(e);
}%>