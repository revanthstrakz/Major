<html>
<head>
    <title>
        AllAuthorizedUsers
    </title>
    <link href="style.css" rel="stylesheet" type="text/css">  
    <style>
        #table{
        width:auto;
        height:auto;
       
       margin-bottom:100px;
        border-radius:15px;
        background-color:#1E90FF;
       
        }
        #name{
        background-attachment:fixed;
        width:300px;
        height:60px;
        background-color:#ff0080;
        border-radius:15px;
        }
        table tr td{
            height:30px;
            padding:10px;
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
        
        <div id="table">
            
            <div id="name">
                <font color="#00ffff" size="5">Authorized Users </font>
                
            </div>
            <a href="ViewAllUsers_Autherise.jsp"><image src="images/rightarrow.png" style="width:30px;height:30px;margin-left:1000px; "/></a>
            
      <%@page import="java.sql.*"%>
<%@page import="com.java.ConnectionProvider" %>
<% String activated;
     try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=ConnectionProvider.getConnection();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from register where status='Authorized'");
     %>
      <table border="1" style="margin-top:20px;margin-bottom:200px;">
                 
                <tr style="background-color: green"><th><font color="white">FirstName</font></th><th><font color="white">LastName</font></th><th><font color="white">Email</font></th><th><font color="white">UserName</font></th><th><font color="white">DOB</font></th><th><font color="white">Gender</font></th><th><font color="white">Mobile</font></th><th><font color="white">Location</font></th> <th><font color="white">Photo</font></th><th><font color="white">Status</font></th></tr>
                <%while(rs.next()){
                    String photo=rs.getString("filename");
                    String status=rs.getString("status");
                   
                    %>
                <tr><td><%=rs.getString("firstname") %></td><td><%=rs.getString("lastname") %></td><td><%=rs.getString("email") %></td><td><%=rs.getString("username") %></td><td><%=rs.getString("dob") %></td><td><%=rs.getString("gender") %></td><td><%=rs.getString("mobile") %></td><td><%=rs.getString("location") %></td><td><image src="Gallery/<%=photo%>" width="80" height="80" style="border-radius:100px " /></td><td><font color="green"><%=status%></font></td></tr>
               <% }
                    }catch(Exception e){
         e.printStackTrace();
     }%>
      </table>
        </div>                 
    </div>
</center>
</body>
</html>
