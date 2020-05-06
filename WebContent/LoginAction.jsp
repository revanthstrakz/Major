<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="green">
    
<%@page import="java.sql.*"%>
<%@page import="com.java.ConnectionProvider" %>
<%@page import="javax.servlet.http.*" %>

<%
    try{ 
        int count=0;
    String username=request.getParameter("username");
String password=request.getParameter("password");
Connection con=ConnectionProvider.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from deleted where username='"+username+"'");
while(rs.next()){
    count=rs.getInt(1);
    System.out.println("LoginAction.jsp"+count);
    if(count==1){ %>
    <script type="text/javascript">
        window.alert("sorry user your deleted by Admin");
        window.location("Login.jsp");
        </script>
  <%  }
else{ 
int count1=0;
Statement stmt=con.createStatement();
ResultSet rst=stmt.executeQuery("select count(*) from register where username='"+username+"'");
while(rst.next()){
count1=rst.getInt(1);
if(count1!=0){
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from register where username='"+username+"' and status='Authorized'");
while(rs1.next()){
    Statement st2=con.createStatement();
    ResultSet rs2=st2.executeQuery("select * from register where username='"+username+"' and password='"+password+"'");
    while(rs2.next()){
         Statement st3=con.createStatement();
       ResultSet rs3=st3.executeQuery("select * from register");
       while(rs3.next()){
           String image=rs3.getString("filename");
           System.out.println(image);
           session.setAttribute("image",image);
           
        session.setAttribute("username",username);
        response.sendRedirect("UserHome.jsp");
 }
    }
    {
        response.sendRedirect("UserLogin.jsp?msg=Login Failed");
    }

}{ %>
<script type="text/javascript">
    window.alert("Sorry user your not yet Authorized by Admin");
    window.location="UserLogin.jsp";
    </script>
    
<%}
}
else{%>
<script type="text/javascript">
    window.alert("Your Not Yet Registered");
    window.location="UserLogin.jsp";
    </script>
<%}
}
}
}
}
catch(Exception e){
        e.printStackTrace();
    }

%>    
</body>
</html>