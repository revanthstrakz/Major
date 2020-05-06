<%-- 
    Document   : MiniStatement
    Created on : Feb 6, 2018, 9:50:27 PM
    Author     : kishan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>



<html>
<head>
    <title>
        Product Details
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:350px;
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
               <li><a href="UserHome.jsp"><h3>Home</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            
            
          
                <table>
                    <font color="orange"><h2>Bank Mini Statement</h2></font>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <% String username=(String)session.getAttribute("username");  %>
                    <%String product=(String)session.getAttribute("product");
                        try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from purchase where username='"+username+"'");%>
                    <tr><th>Product Name</th><th>Date</th><th>Cost</th></tr>
                   <% while(rs.next()){
                        String productname=rs.getString("productname");
                        
                       String date=rs.getString("date");                       
                       String cost=rs.getString("cost");
                       
                      
                      
                       
                       
%>

<tr><td><%=productname%></td><td><%=date %></td><td><%=cost%></td></tr>
 
                        <%
                          }
                          }
                    catch(Exception e){
                    out.println(e);
                      }%>
                        
                    </table>
                      <a href="UserAccount.jsp"><input type=submit value="Back"></a>     
        </div>
   
    </div>
</center>
</body>
</html>


