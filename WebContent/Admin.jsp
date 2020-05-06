<html>
<head>
    <title>
        Admin Login
    </title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <script>
        function validate(){
            if(document.admin.username.value==''){
                alert("Please Enter Username");
               
                document.admin.username.focus();
                return false;
            }
            if(document.admin.password.value==''){
                alert("Please Enter Password");
                
                document.admin.password.focus();
                return false;
            }
            return true;
        }
        </script>
    <style>
        #login{
        width:400px;
        height:240px;
       
        margin-left:350px;
        border-radius:15px;
        background-color:#00ffff;
       
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
            background-image: url("images/admin.jpg");
            background-repeat: no-repeat;
            width:200px;
            height:240px;
          
            margin-top:170px;
            margin-right:350px
            
        }
    </style>
</head>
<body>
<center><div id="main">
        
        <div id="header">
            
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font>
        <div id="adminimage">
            
            </div>
        </div>
        
           <ul>
               <li><a href="index.html"><h3>Home</h3></a></li>
               <li><a href="Admin.jsp"><h3>Admin</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>User</h3></a></li>
                </ul>
        
        <div id="login">
            
            <div id="name">
                <font color="#00ffff" size="8">Admin Login </font>
                
            </div>
            <% String msg=request.getParameter("msg");
            if(msg!=null){%>
            <script type="text/javascript">
                window.alert("Login Failed");
                window.location("Admin.jsp");
                <%}%>
                </script>
                <form action="AdminAction.jsp" method="post" name="admin" onsubmit="return validate()">
                <table>
                    <tr><td>UserName</td><td><input type="text" name="username" style="border-radius:15px; width:180px; height:30px;"></td></tr>  
                    <tr><td>Password</td><td><input type="password" name="password" style="border-radius:15px; width:180px; height:30px;"></td></tr>  
                    <tr><td></td><td><input type="submit" value="Login" style="border-radius:15px; height:40px; width:80px"/> <input type="reset" style="border-radius:15px; height:40px; width:80px;"></td></tr>  
                </table>
            </form>
            
        </div>
  
    </div>
</center>
</body>
</html>
