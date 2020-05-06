<%-- 
    Document   : UserAccount
    Created on : Feb 5, 2018, 7:59:02 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>

<% String username=(String)session.getAttribute("username");  %>

<html>
<head>
    <title>
        User Home
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:190px;
            height:300px;
            border:1px solid black;
            margin-right:300px;
            border-radius:15px;
            float:right;
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

       
           <div id="adminimage">
               <h3>Hello MR:<%=username %></h3>
            <image src="images/users.jpg" style="width:300px;height:200px"/>  
            </div>
            
        </div>
        
           <ul>
               <li><a href="UserHome.jsp"><h3>Home</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            
            
                <table>
                    <tr><td><a href="UserProfile.jsp">My Profile</a></td></tr>
                    <tr><td><a href="UserAccount.jsp?msg=<%=username%>">My Account</a></td></tr>
                    <tr><td><a href="SearchProduct.jsp">Search Product</a></td></tr>
                    
                    <tr><td><a href="ViewAllMyPurchasedItems.jsp">View All My Purchased items</a></td></tr>
                    <tr><td><a href="ViewAllMyRecommendedItemsForMe.jsp">View All My Recommended Items For Me</td></tr>
                    <tr><td><a href="UserLogin.jsp">LogOut</a></td></tr>  
                    </table>
     
        </div>
  
    </div>
</center>
</body>
</html>

