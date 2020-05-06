<%-- 
    Document   : UserAccount
    Created on : Feb 6, 2018, 10:10:19 AM
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
            width:190px;
            height:200px;
            border:1px solid black;
            margin-right:550px;
            border-radius:15px;
            float:right;
            background-color: #00ffff;
           
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
            
            
            <a href="UserHome.jsp"><image src="images/leftarrow.png" style="width:30px;height:30px;margin-right:1000px; "/></a>
             <div id="Account">
            <table>
                <tr><td><a href="CreateBankAccount.jsp">Create Bank Account</a></td></tr>
                 <tr><td><a href="ViewAccountDetails.jsp">View Account Details</a></td></tr>
                  <tr><td><a href="ViewMiniStatement.jsp">View Mini Statement</a></td></tr>                
                   <tr><td><a href="DepositMoney.jsp">Deposit Money</a></td></tr>
            </table>
        </div>
  
    </div>
</center>
</body>
</html>
