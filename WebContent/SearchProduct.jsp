<%-- 
    Document   : SearchProduct
    Created on : Feb 6, 2018, 11:57:00 AM
    Author     : kishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>

<% String username=(String)session.getAttribute("username");  %>

<html>
<head>
    <title>
        Search Product
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
            margin-top:100px;
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
    <script>
        function validate(){
            if(document.search.product.value=='select'){
                alert("Please Select Product");
                return false;
            }
            return true;
        }
        </script>
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
            
            <h2><font color="red">Search Product</font></h2>
            <form action="UpdateRank.jsp" method="post" name="search" onsubmit="return validate();">
                <table>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from productpost");
                    
%>
<tr><td><input type="hidden" name="username" value="<%=username%>"></td></tr>
                    <tr><td>Search Product</td><td><select name="product" style="width:110px">
                                <option>select</option>
                                <%while(rs.next()){
                        String product=rs.getString("productname");%>
                                <option><%=product%></option>
                                <%}
                       }
                    catch(Exception e){
                    out.println(e);
                      }%>
                                 </select></td></tr> 
                    <tr><td></td><td><input type="submit" value="Search Product"></td></tr>
                    
                    </table>
            </form>
        </div>
  
    </div>
</center>
</body>
</html>

