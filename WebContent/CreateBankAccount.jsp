<%-- 
    Document   : UserAccount
    Created on : Feb 6, 2018, 10:10:19 AM
    Author     : kishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>
       Create Account
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    <link href="style2.css" rel="stylesheet" type="text/css"> 
    <style>
        
        #Account{
            width:290px;
            height:350px;
            border:1px solid black;
            margin-right:470px;
            border-radius:15px;
            float:right;
            background-color: #00ffff;
            margin-bottom:100px; 
        }
        #Account tr td {
            padding:10px;
            text-decoration: none;
        } 
        #Account a{
            
            text-decoration: none;
        }
        #Account a:hover:not(.active) {
    background-color: pink;
      }
    </style>
</head>
<body>
<center><div id="main2">
        
        <div id="header">
            
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font>
        
        </div>
        
           <ul>
               <li><a href="UserHome.jsp"><h3>User Home</h3></a></li>
               <li><a href="LoginUser.jsp"><h3>LogOut</h3></a></li>
     
                </ul>
   
            <a href="UserAccount.jsp"><image src="images/leftarrow.png" style="width:30px;height:30px;margin-right:1000px; "/></a>
             <div id="Account">
                 <form action="UserBankAccount.jsp" name="account" method="post">
                     <%String msg=request.getParameter("msg"); 
                     if(msg!=null){%>
                     <font color="green"><%=msg%></font>
                     <%}%>
            <table>
                <tr><td>Account Number</td><td><input type="text" name="account" required></td></tr>
                 <tr><td>Branch</td><td><input type="text" name="branch" required></td></tr>
                 <%@page import="java.sql.*" %> 
                 <%@page import="com.java.ConnectionProvider"%>
                 <%String username=(String)session.getAttribute("username");
try{                     
    Connection con=ConnectionProvider.getConnection();

                 Statement st=con.createStatement();
                 ResultSet rs=st.executeQuery("select * from register where username='"+username+"'");
                 while(rs.next()){
                     
                 String username1=rs.getString("username");
                 String mobile=rs.getString("mobile");
                 String location=rs.getString("location");%>
                 <tr><td>User Id</td><td><input type="text" name="email" value="<%=username1%>" required></td></tr>
                 <tr><td>Mobile</td><td><input type="text" name="mobile" value="<%=mobile%>" required></td></tr>
                 <tr><td>Your Location</td><td><input type="text" name="location" value="<%=location %>" required></td></tr> 
                  <tr><td></td><td><input type="submit" value="Create Account"></td></tr> 
                   <%} 
}catch(Exception e){
out.println(e);
} %>
            </table>
                 </form>
        </div>
  
    </div>
</center>
</body>
</html>
