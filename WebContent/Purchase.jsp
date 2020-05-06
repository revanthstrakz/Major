<%-- 
    Document   : Purchase
    Created on : Feb 6, 2018, 6:36:19 PM
    Author     : kishan
--%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>
<%@page import="com.java.ProductPost"%>
<% String username=(String)session.getAttribute("username");  %>
<%String productname=(String)session.getAttribute("productname");
String productcost=(String)session.getAttribute("productcost");
String rank=(String)session.getAttribute("rank"); 
String rating=(String)session.getAttribute("rating");
String date=ProductPost.getCurrentDate().toString(); 
try{
    Connection con=ConnectionProvider.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into purchase values('"+username+"','"+productname+"','"+date+"','"+productcost+"','"+rank+"','"+rating+"','1')");
    if(i>0){%>
    <script type="text/javascript">
    window.alert("Your Product is Successfully Purchased");
    window.location="ViewProductDetails.jsp";
    </script>
    <%}
    else{%>
    <script type="text/javascript">
    window.alert("Your Product Purchase Failed");
    window.location="ViewProductDetails.jsp";
    </script>
    <%}
    
}catch(Exception e){
    out.println(e);
}%>