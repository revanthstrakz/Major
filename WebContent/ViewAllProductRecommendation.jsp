<%-- 
    Document   : ViewAllProductRecommendation
    Created on : Feb 7, 2018, 5:29:57 PM
    Author     : kishan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>
<html>
<head>
    <title>
      All Product Recommendation
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:auto;
            height:auto;
            border:1px solid black;
            margin-right:300px;
            border-radius:15px;
            float:right;
            margin-bottom: 100px;
            background-color:#00ffff;
           
        }
        #login tr td {
            padding:10px;
            text-decoration: none;
        } 
        #login a{
            
            text-decoration: none;
        }
        #login a:hover:not(.active) {
    background-color: pink;
      }
    </style>
</head>
<body>
<center><div id="main">
        
        <div id="header">
            
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font>

            
        </div>
        
           <ul>
               <li><a href="AdminHome.jsp"><h3>AdminHome</h3></a></li>
               <li><a href="Admin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            <h2><font color="green"> All Product Recommendation</font></h2>
 <table border="1" style="margin-bottom:50px;">
     <tr><th>Recommended By</th><th>Recommended To</th><th>Product Name</th><th>Product Cost</th><th>Date</th><th>Rank</th><th>Rating</th></tr>
     <%@page import="java.sql.*"%>
     <%@page import="com.java.ConnectionProvider" %>  
     <%try{
         String Positive;
         Connection con=ConnectionProvider.getConnection();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from recommend");
         while(rs.next()){
             String username=rs.getString("username");
             String recommendedname=rs.getString("recommendedname");
             String productname=rs.getString("productname");
     String cost=rs.getString("cost");
     String date=rs.getString("date");
     String rank=rs.getString("rank");
     String rating=rs.getString("rating");%>
     <tr><td><%=username%></td><td><%=recommendedname%></td><td><%=productname%></td><td><%=cost%></td><td><%=date%></td><td><%=rank%></td><td><%=rating%></td></tr>
         <%}
     }catch(Exception e){
         out.println(e);
}%>
                    </table>
        </div>
    </div>
</center>
</body>
</html>



