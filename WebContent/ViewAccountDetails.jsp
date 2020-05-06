<%-- 
    Document   : ViewAccountDetails
    Created on : Feb 6, 2018, 11:19:34 AM
    Author     : Acer
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>
       User Account
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
            <font color="blue"><h2>Account Details</h2></font> 
           
                 <form action="UserBankAccount.jsp" name="account" method="post">
                     
            <table>
               
                 <%@page import="java.sql.*" %> 
                 <%@page import="com.java.ConnectionProvider"%>
                 <%String username=(String)session.getAttribute("username");
               try{                     
                 Connection con=ConnectionProvider.getConnection();

                 Statement st=con.createStatement();
                 ResultSet rs=st.executeQuery("select * from useraccount where username='"+username+"'");
                 while(rs.next()){
                  String accountnumber=rs.getString("accountnumber");
                           String branch=rs.getString("branch");    
                 String emailid=rs.getString("username");
                 String mobile=rs.getString("mobile");
                 String location=rs.getString("location");
                  %>
                 <tr><th>Account Number</th><td><%=accountnumber%></td><tr>
                     <tr><th>Branch</th><td><%=branch%></td><tr>
                         <tr><th>Email</th><td><%=emailid%></td><tr>
                         <tr><th>Mobile Number</th><td><%=mobile%></td><tr>
                             <tr><th>Location</th><td><%=location%></td><tr>
                                 <%Statement st2=con.createStatement();
                 ResultSet rs1=st2.executeQuery("select amount from deposite where holdername='"+username+"'");
                 while(rs1.next()){ 
                                 int amount=rs1.getInt("amount"); %>   
                                 <tr><th>Amount</th><td><%=amount%></td><tr>
                   <%}
}
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
