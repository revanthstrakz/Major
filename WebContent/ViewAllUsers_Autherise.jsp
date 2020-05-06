<html>
<head>
    <title>
       View All users-Authorize
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
               <li><a href="AdminHome.jsp"><h3>AdminHome</h3></a></li>
               <li><a href="Admin.jsp"><h3>LogOut</h3></a></li>
     
                </ul>
       
        <div id="Register">
            
            <div id="name">
                <font color="#00ffff" size="5">View All Users and Authorize </font>  
            </div>
            <a href="AllAuthorizedUsers.jsp"><image src="images/leftarrow.png" style="width:30px;height:30px;margin-right:1000px; "/></a>
           <%@page import="java.sql.*"%>
<%@page import="com.java.ConnectionProvider" %>
<% int count=0;

String username=(String)session.getAttribute("username");
String value=request.getParameter("value");
String value1=request.getParameter("value1");
     try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con=ConnectionProvider.getConnection();
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select count(*) from register where status='Authorized' and username='"+username+"'");
       while(rs.next()){
           count=rs.getInt(1);
           if(count==1&&count==0){%>
           <div id="admin">
                <h2>WelCome Admin</h2>
                <h2><font color="green">Activate Users</font></h2>
               <h3> <font color="red">Sorry there is no user to activate</font></h3>
            </div>
          
         <%  }
           else{
               Statement st1=con.createStatement();
               ResultSet rs1=st1.executeQuery("select * from register where status='waiting'");
          
     %>
           
            <table border="1" style="margin-top:20px;margin-bottom:200px;">
                 
                <tr><th>FirstName</th><th>LastName</th><th>Email</th><th>UserName</th><th>DOB</th><th>Gender</th><th>Mobile</th><th>Location</th> <th>Photo</th><th>Status</th></tr>
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
                    session.setAttribute("value", status);
                    %>
                
               <tr><td><%=firstname%></td><td><%=lastname%></td><td><%=email%></td><td><%=username1 %></td><td><%=dob%></td><td><%=gender %></td><td><%=mobile%></td><td><%=location%></td><td><image src="Gallery/<%=photo%>" width="100" height="100" style="border-radius:100px " /></td><td><a href="UserActivation?value=Authorized&username=<%=username1%>">Authorize</a>,<a href="DeleteUser?value=<%=username1%>&value1=<%=firstname%>&value2=<%=lastname%>&value3=<%=email%>&value4=<%=gender%>&value5=<%=mobile%>&value6=<%=location%>&value7=<%=photo%>&value8=<%=savepath%>&value9=<%=dob%>">Delete</a></td></tr>
          
               <%
                 
                 }
                    } %>
                    <%if(value!=null&&value1!=null){%>
                    <font color="red"><%=value%></font><font color="green"><%=value1%></font>
                    <%}%>
                <%    }
                    }catch(Exception e){
         e.printStackTrace();
     }%>
        </div>
  
    </div>
</center>
</body>
</html>
