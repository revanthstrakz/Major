<html>
<head>
    <title>
        User Login
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    <script>
        function validate(){
            if(document.user.username.value==''){
                alert("Please Enter Username");
               
                document.user.username.focus();
                return false;
            }
            if(document.user.password.value==''){
                alert("Please Enter Password");
                
                document.user.password.focus();
                return false;
            }
            return true;
        }
        </script>
    <style>
        #login{
        width:400px;
        height:280px;
       
        margin-left:350px;
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
        <div id="adminimage">
            <image src="images/users.jpg" style="width:300px;height:200px"/>  
            </div>
        </div>
        
           <ul>
               <li><a href="index.html"><h3>Home</h3></a></li>
               <li><a href="Admin.jsp"><h3>Admin</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>User</h3></a></li>
                </ul>
        
        <div id="login">
            
            <div id="name">
                <font color="#00ffff" size="8">User Login </font>
                
            </div>
            <% String msg=request.getParameter("msg");
            if(msg!=null){%>
            <script type="text/javascript">
                window.alert("Login Failed");
                window.location("Admin.jsp");
                <%}%>
                </script>
            <form action="LoginAction.jsp" method="post" name="user" onsubmit="return validate()">
                <table>
                    <tr><td>UserName</td><td><input type="text" name="username" style="border-radius:15px; width:180px; height:30px;"></td></tr>  
                    <tr><td>Password</td><td><input type="password" name="password" style="border-radius:15px; width:180px; height:30px;"></td></tr>  
                    <tr><td></td><td><input type="submit" value="Login" style="border-radius:15px; height:40px; width:80px"/> <input type="reset" style="border-radius:15px; height:40px; width:80px;"></td></tr>  
                    <tr><td></td><td>New User? <a href="Register.jsp"><font color="red">Register Here</font></a></td></tr>
                </table>
            </form>
            
        </div>
  
    </div>
</center>
</body>
</html>
