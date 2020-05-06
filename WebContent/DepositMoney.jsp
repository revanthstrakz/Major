<%-- 
    Document   : Deposite
    Created on : Feb 7, 2018, 10:13:50 AM
    Author     : kishan
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
            width:350px;
            height:330px;
            border:1px solid black;
            margin-right:430px;
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
             <% String username=(String)session.getAttribute("username");  %>

        <h3>Hello MR:<%=username %></h3>
            
   
            <a href="UserAccount.jsp"><image src="images/leftarrow.png" style="width:30px;height:30px;margin-right:1000px; "/></a>
             <div id="Account">
                 <%String value=request.getParameter("value"); 
                 if(value!=null){%>
                 <%=value%>
                 <%}%>
                 <form action="DepositeDB.jsp" name="deposite" method="post">
                     
                     
                     <h2><font color="red">Deposite Money</font></h2>
            <table>
                
                <tr><td>Account Number</td><td><input type="text" name="account" required></td></tr>
                 <tr><td>Branch</td><td><input type="text" name="branch" required></td></tr>
                 <tr><td>Acc Holder Name</td><td><input type="text" name="holder"required/></td></tr>
                 <tr><td>Amount</td><td><input type="text" name="amount"required/></td></tr>
                 <tr><td></td><td><input type="submit" value="Deposite"> <input type="reset"/></td></tr>
            </table>
                 </form>
        </div>
  
    </div>
</center>
</body>
</html>
