<%-- 
    Document   : ViewAllLowRatingProducts
    Created on : Feb 7, 2018, 6:20:49 PM
    Author     : kishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>

<% String username=(String)session.getAttribute("username");  %>

<html>
<head>
    <title>
        Product Details
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:auto;
            height:auto;
            border:1px solid black;
            margin-right:180px;
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
<script>
    function validate(){
        if(document.rate.rating.value=='select'){
            alert("Please Rate The Product");
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

            
        </div>
        
           <ul>
               <li><a href="AdminHome.jsp"><h3>AdminHome</h3></a></li>
               <li><a href="Admin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            
            
          
                <table border="1">
                    <font color="orange"><h2>Low Ranking Products</h2></font>
                    <tr><th>Product Image</th><th>Product Name</th><th>Product Manufacture</th><th>Product Price</th><th>Uses</th><th>Date</th><th>Rank</th><th>Rating</th></tr>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%
                        try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from productpost where rating<'3'");
                    while(rs.next()){
                        String productname=rs.getString("productname");
                        String manufacture=rs.getString("manufacturer");
                       String image=rs.getString("filename");                       
                       
                       String productuses=rs.getString("postuses");
                       String productprice=rs.getString("productprice");
                      String date=rs.getString("date");
                       String rank=rs.getString("rank");
                      String rating=rs.getString("rating");
                      
                       
                       
%>
 <tr><td><image src="Gallery/<%=image%>" width="60" height="60" style="border-radius:100px"/></td>
<td><%=productname%></td>
 <td><%=manufacture%></td>
 <td><%=productprice%></td>
 
 <td><textarea col="2" rows="2"><%=productuses%></textarea></td>
<td><%=date%></td>
<td><%=rank%></td>
<td><%=rating%></td></tr>
                 <%
                          }
                          }
                    catch(Exception e){
                    out.println(e);
                      }%>
                   
                    </table>
            </form>
          
                        
                    </table>
        </div>
  
    </div>
</center>
</body>
</html>


