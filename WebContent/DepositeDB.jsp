<%-- 
    Document   : DepositeDB
    Created on : Feb 7, 2018, 10:25:53 AM
    Author     : kishan
--%>

<%@page import="java.sql.*"%>
<%@page import="com.java.ConnectionProvider" %>
    <% String username=(String)session.getAttribute("username");  %>

            
<%
    String account=request.getParameter("account"); 
String branch=request.getParameter("branch"); 
String holder=request.getParameter("holder"); 
int amount=Integer.parseInt(request.getParameter("amount")); %>
<%try{ int count=0;
    Connection con=ConnectionProvider.getConnection();
    Statement stmt=con.createStatement();
    ResultSet rslt=stmt.executeQuery("select count(*) from useraccount where account='"+account+"'");
    while(rslt.next()){
        count=rslt.getInt(1);
        if(count==0){
        
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from deposite where depositer='"+username+"'and accountnumber='"+account+"'and branch='"+branch+"'and holdername='"+holder+"'");
if(rs.next()){
   int Amount=Integer.parseInt(rs.getString("amount"));
   int Amount2=Amount+amount;
   Statement st1=con.createStatement();
   int i=st1.executeUpdate("update deposite set amount='"+Amount2+"'");
   if(i>0){%>
   <script type="text/javascript">
       window.alert("Amount Deposite Successfully");
       window.location="DepositMoney.jsp";
       </script>
  <% }
   else{%>
       <script type="text/javascript">
       window.alert("Amount Deposite Failed");
       window.location="DepositMoney.jsp";
       </script>
   <%}
}
  
   else{
           Statement st2=con.createStatement();
  int y=st2.executeUpdate("insert into deposite values('"+username+"','"+account+"','"+branch+"','"+holder+"','"+amount+"')");
if(y>0){%>
   <script type="text/javascript">
       window.alert("Amount Deposite Successfully");
       window.location="DepositMoney.jsp";
       </script>
<%}
else{%>
      <script type="text/javascript">
       window.alert("Amount Deposite Failed");
       window.location="DepositMoney.jsp";
       </script>
   <%}
}
}
else{%>
<script type="text/javascript">
       window.alert("Entered Account Number Does Not Exist");
       window.location="DepositMoney.jsp";
       </script>
<%}
}
}catch(Exception e){
       out.println(e);
        }
%>