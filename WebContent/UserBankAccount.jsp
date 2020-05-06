<%-- 
    Document   : UserBankAccount
    Created on : Feb 6, 2018, 10:54:29 AM
    Author     : kishan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider"%>
<% String account=request.getParameter("account");
String branch=request.getParameter("branch");
String emailid=request.getParameter("email");
String mobile=request.getParameter("mobile");
String location=request.getParameter("location");


try{ 
    int count=0;
    String username=(String)session.getAttribute("username");

    Connection con=ConnectionProvider.getConnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select count(*) from useraccount where username='"+username+"'");
    while(rs.next()){
        count=rs.getInt(1);
        if(count==0){
   
    int i=st.executeUpdate("insert into useraccount values('"+account+"','"+branch+"','"+emailid+"','"+mobile+"','"+location+"')");
if(i>0){%>
<script type="text/javascript">
    window.alert("Account Created Successfully");
    window.location="CreateBankAccount.jsp";
    </script>
  
<%}
else{ %>
   <script type="text/javascript">
    window.alert("Account Creation Failed");
    window.location="CreateBankAccount.jsp";
    </script>

<%}
        }else{ %>
         <script type="text/javascript">
    window.alert("Account Already Created By this Email");
    window.location="CreateBankAccount.jsp";
    </script>
           
       <% }
    }
 }catch(Exception e){
    out.println(e);
}










%>