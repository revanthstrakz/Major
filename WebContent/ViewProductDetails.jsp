<%-- 
    Document   : ViewProductDatails
    Created on : Feb 6, 2018, 12:28:30 PM
    Author     :kishan
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
            width:350px;
            height:auto;
            border:1px solid black;
            margin-right:490px;
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
               <li><a href="UserHome.jsp"><h3>Home</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            
            
          
                <table>
                    <font color="orange"><h2>Searched Product Details</h2></font>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%String product=(String)session.getAttribute("product");
                        try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from productpost where productname='"+product+"'");
                    if(rs.next()){
                        String productname=rs.getString("productname");
                        String manufacture=rs.getString("manufacturer");
                       String image=rs.getString("filename");                       
                       
                       String productuses=rs.getString("postuses");
                       String productprice=rs.getString("productprice");
                      String date=rs.getString("date");
                       String rank=rs.getString("rank");
                      String rating=rs.getString("rating");
                      
                       
                       
                 %>

<tr><th>Product Image</th><td><image src="Gallery/<%=image%>" width="60" height="60" style="border-radius:100px"/></td></tr>
<tr><th>Product Name</th><td><%=productname%></td></tr>
 <tr><th>Product Manufacture</th><td><%=manufacture%></td></tr>
 <tr><th>Product Price</th><td><%=productprice%></td></tr>

 <tr><th>Uses</th><td><textarea col="2" rows="2"><%=productuses%></textarea></td></tr> 
<tr><th>Date</th><td><%=date%></td></tr>
<tr><th>Rank</th><td><%=rank%></td></tr>
<tr><th>Rating</th><td><%=rating%></td></tr>
                   
                    </table>
            <form action="UpdateRating.jsp" name="rate" method="post" onsubmit="return validate()">
                    <table border="1">
                        <tr><input type="hidden" name="product" value="<%=product%>"></tr>
                        <tr><td>Rate Here <select name="rating"><option>select</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option></select><input type="submit" value="OK"></td></tr>
                        <tr><td>Please Give Rating Before doing purchase,review,recommend</td></tr>
                   
                        <tr><td><a href="TimesofPurchase.jsp?value1=<%=productname%>&value2=<%=productprice%>&value3=<%=rank%>&value4=<%=rating%>">Purchase</a></td></tr>
                                              
                          <tr><td><a href="Review.jsp?msg2=<%=productname%>&manufacture=<%=manufacture%>">Review</a></td></tr>
                      <tr><td><a href="Recommend.jsp?product=<%=product%>&rating=<%=rating%>">Recommend</a></td></tr>
                        <%
                          }
                          }
                    catch(Exception e){
                    out.println(e);
                      }%>
                        
                    </table>
            </form>
        </div>
  
    </div>
</center>
</body>
</html>


