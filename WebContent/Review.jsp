<%-- 
    Document   : Review
    Created on : Feb 6, 2018, 2:23:29 PM
    Author     : kishan
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
            width:290px;
            height:auto;
            border:1px solid black;
            margin-right:300px;
            border-radius:15px;
            float:right;
            margin-top:10px;
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
            <a href="ViewProductDetails.jsp"><image src="images/leftarrow.png" style="width:50px;height:50px;margin-right:1000px;"></a>
        <div id="login">
            <%String msg=request.getParameter("msg"); 
            if(msg!=null){%>
            <%=msg %>
            <%}%>
            <h2><font color="red">Review Product</font></h2>
            <form action="ReviewDB.jsp" method="post">
                <table>
                   
                    <%String productname=request.getParameter("msg2"); 
                    String manufacture=request.getParameter("manufacture");
                    if(productname!=null){%>
                    <tr><td>Opinion</td><td><select name="opinion"><option>select</option>
                            <option>Positive</option>
                            <option>Negative</option>
                            </select></td></tr>  
                    <tr><td>Post Name</td><td><input type="text" name="product" value="<%=productname%>"></td></tr>
                    <%}else{%>
                    <tr><td>Post Name</td><td><input type="text" name="product"></td></tr>
                    <%}%>
                    <tr><td><input type="hidden" name="manufacture" value="<%=manufacture%>"></td></tr>
                    <tr><td>Write Review</td><td><textarea cols="15" rows="2" name="review"></textarea></td></tr>
                    <tr><td></td><td><input type="submit" value="Post Review"></td></tr>
                  
                    </table>
            </form>
        </div>
  
    </div>
</center>
</body>
</html>

