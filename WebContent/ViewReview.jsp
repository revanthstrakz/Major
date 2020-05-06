<%-- 
    Document   : ViewReview
    Created on : Feb 7, 2018, 2:44:47 PM
    Author     : kishan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>



<html>
<head>
    <title>
       Reviews
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:450px;
            height:auto;
            border:1px solid black;
            margin-right:430px;
            border-radius:15px;
            float:right;
          margin-bottom: 100px;
            background-color: #00ffff;
           
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
        #adminimage{
            
            background-repeat: no-repeat;
            width:200px;
            height:240px;
          
            margin-top:170px;
            margin-right:550px
            
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
            
            
          
                <table border="1">
                    <font color="orange"><h2>Product Reviews</h2></font>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                   
                    <%String productname=request.getParameter("productname");
                        try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from review where productname='"+productname+"'");%>
                    <tr><th>Product Name</th><th>Manufacture</th><th>Review</th><th>Rating</th></tr>
                   <% while(rs.next()){
                        String productname1=rs.getString("productname");
                        String manufacture=rs.getString("manufacture");                       
                       String review=rs.getString("review");
                       
                        if(productname1!=null){
                            Statement st1=con.createStatement();
                    ResultSet rs1=st1.executeQuery("select rating from productpost where productname='"+productname+"'");
                    while(rs1.next()){
                        String rating=rs1.getString("rating");
                    
                     
%>

                    <tr><td><%=productname%></td><td><%=manufacture %></td><td><%=review%></td><td><%=rating%></td></tr>
 
                        <%}
                            }else{%>
<tr><th>Product Name</th><th>Manufacture</th><th>Review</th></tr>
<tr><td>Sorry There is no Review for this product</td></tr>
<%}
                          }
                          }
                    catch(Exception e){
                    out.println(e);
                      }%>
                        
                    </table>
                      <a href="ViewAllProductPost.jsp"><input type=submit value="Back"></a>     
        </div>
   
    </div>
</center>
</body>
</html>


