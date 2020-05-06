<%-- 
    Document   : UserProfile
    Created on : Feb 5, 2018, 8:27:26 PM
    Author     : kishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>
       User Profile
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    <link href="style2.css" rel="stylesheet" type="text/css"> 
    <style>
        #Register2{
        width:1000px;
        height:auto;  
        border-radius:15px;
        background-color:#1E90FF;
       
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
       
        <div id="Register">
            
            <div id="name">
                <font color="#00ffff" size="5">My Profile </font>  
            </div>
            <a href="UserHome.jsp"><image src="images/leftarrow.png" style="width:30px;height:30px;margin-right:1000px; "/></a>
           <%@page import="java.sql.*"%>
<%@page import="com.java.ConnectionProvider" %>
<% 

String username=(String)session.getAttribute("username");


     try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=ConnectionProvider.getConnection();
    
               Statement st1=con.createStatement();
               ResultSet rs1=st1.executeQuery("select * from register where username='"+username+"'");
          
      %>
           
            <table border="1" style="margin-top:20px;margin-bottom:200px;">
                 
                <%while(rs1.next()){
                    String firstname=rs1.getString("firstname");
                    String lastname=rs1.getString("lastname"); 
                    String email=rs1.getString("email"); 
                    String username1=rs1.getString("username");
                    String dob=rs1.getString("dob");
                    String gender=rs1.getString("gender");
                    String mobile=rs1.getString("mobile"); 
                    String location=rs1.getString("location"); 
                    String photo=rs1.getString("filename");
                    String savepath=rs1.getString("savepath");
                    String status=rs1.getString("status");
                    
                    %>
                    <tr><th>FirstName</th><td><%=firstname%></td></tr>
                    <tr><th>LastName</th><td><%=lastname%></td></tr>
                    <tr><th>Email</th><td><%=email%></td></tr>
                    <tr><th>UserName</th><td><%=username1 %></td></tr>
                    <tr><th>DOB</th><td><%=dob%></td></tr>
                    <tr><th>Gender</th><td><%=gender %></td></tr>
                    <tr><th>Mobile</th><td><%=mobile%></td></tr>
                    <tr><th>Location</th><td><%=location%></td></tr>
                    <tr><th>Photo</th> <td><image src="Gallery/<%=photo%>" width="100" height="100" style="border-radius:100px " /></td></tr>
                    <tr><th>Status</th><td><%=status%></td></tr>
          <%}
}catch(Exception e){
out.println(e);
} %>
            </table>
        </div>
  
    </div>
</center>
</body>
</html>
