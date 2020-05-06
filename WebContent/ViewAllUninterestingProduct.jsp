<%-- 
    Document   : ViewAllUninterestingProduct
    Created on : Feb 8, 2018, 12:27:34 PM
    Author     : kishan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title>
       Un-Interesting Items
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
            margin-right:420px;
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
                    <font color="orange"><h2>All Un-Interesting Items</h2></font>
                    <tr><th>Product Name</th><th>Product Price</th><th>No of Times Purchased</th><th>Rank</th><th>Rating</th></tr>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%
                        try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("SELECT timesofpurchase FROM purchase");
                    while(rs.next()){
                        int i=rs.getInt("timesofpurchase");
                        if(i<3){
                     Statement st1=con.createStatement();   
                     ResultSet rs1=st1.executeQuery("SELECT * FROM purchase");
                     while(rs1.next()){
                        String productname=rs1.getString("productname");
                         String cost=rs1.getString("cost");   
                       
                      String rank=rs1.getString("rank");
                      String rating=rs1.getString("rating");
                     
                     
                      
                       
                       
%>

                   
                         <tr><td><%=productname%></td>
                        <td><%=cost%></td>
                        <td><%=i%></td>
                      
 <td><%=rank%></td>
 
 <td><%=rating%></td></tr>

                 <%}
}
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




