<html>
<head>
    <title>
       Register
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
     <link href="style2.css" rel="stylesheet" type="text/css"> 
     <script>
         


         function validate()
         {
            if(document.reg.firstname.value==''){
                alert("please enter FirstName");
                document.reg.firstname.focus();
                return false;
            }
            if(document.reg.lastname.value==''){
                alert("please enter LastName");
                document.reg.lastname.focus();
                return false;
            }
            if(document.reg.email.value==''){
                alert("please enter Email Id");
                document.reg.email.focus();
                return false;
            }
            
             if(document.reg.email.value.indexOf("@",0)<0){
                alert("Missing @ Symbol");
                document.reg.email.focus();
                return false;
            }
            if(document.reg.email.value.indexOf(".",0)<0){
                 alert("Missing . Symbol ");
                document.reg.email.focus();
                return false;
            }
             if(document.reg.uname.value==''){
                alert("please enter UserName");
                document.reg.uname.focus();
                return false;
            }
            if(document.reg.pass.value==''){
                alert("please enter Password");
                document.reg.pass.focus();
                return false;
            }
            if(document.reg.cpass.value==''){
                alert("please enter ConfirmPassword");
                document.reg.cpass.focus();
                return false;
            }
             if(document.reg.pass.value!==document.reg.cpass.value){
                 alert("Your Password MisMatch");
                 document.reg.cpass.focus();
                 return false;
             }
             if(document.reg.gender==''){
                 alert("Please select Gender");
                 document.reg.gender.focus();
                 return false;
             }
             if(document.reg.dob.value==''){
                alert("please enter Date");
                document.reg.dob.focus();
                return false;
            }
            if(document.reg.gender.value=='Select'){
                alert("please select Gender");
                document.reg.gender.focus();
                return false;
            }
            if(document.reg.mobile.value==''){
                alert("please enter MobileNumber");
                document.reg.mobile.focus();
                return false;
            }
            if(isNaN(document.reg.mobile.value)){
                alert("Mobile Number should be Numeric");
                document.reg.mobile.focus();
                return false;
            }
            if(document.reg.location.value==''){
                alert("Please Enter Location");
                document.reg.location.focus();
                return false;
            }
             if(document.reg.image.value==''){
                alert("Please Choose Image");
                document.reg.image.focus();
                return false;
            }
            
             
             
              return true;
          }
       
         </script>
</head>
<body>
<center><div id="main2">
        
        <div id="header">
            
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font>
        
        </div>
        
           <ul>
               <li><a href="index.html"><h3>Home</h3></a></li>
               <li><a href="Admin.jsp"><h3>Admin</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>User</h3></a></li>
                </ul>
        <% String msg=request.getParameter("msg");%>
        <%if(msg!=null){ %>
        <font color="#228B22" size="6"><%= msg%></font>  <a href="UserLogin.jsp">Login Here</a>
         <%}%>
         <% String message=request.getParameter("message");%>
        <%if(message!=null){ %>
        <font color="red" size="4"><%=message%></font>
         <%}%>
        <div id="Register">
            
            <div id="name">
                <font color="#00ffff" size="6">User Registration </font>
                
            </div>
            
            <form action="RegisterAction" method="post" name="reg" enctype="multipart/form-data" onsubmit="return validate()">
                <table>
                    <tr><td>First Name</td><td><input type="text" name="firstname" style="border-radius:15px; width:180px; height:30px;"></td></tr>  
                    <tr><td>Last Name</td><td><input type="text" name="lastname" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td>Email Id</td><td><input type="text" name="email" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td>User Name</td><td><input type="text" name="uname" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="pass" style="border-radius:15px; width:180px; height:30px;">
                        <button type="button"  
                   onclick="if(pass.type=='text')pass.type='password'; 
                       else pass.type='text';">
                       view
                  </button></td></tr>
                    <tr><td>Confirm Password</td><td><input type="password" name="cpass" style="border-radius:15px; width:180px; height:30px;">
                        <button type="button"  
                   onclick="if(cpass.type=='text')cpass.type='password'; 
                       else cpass.type='text';">
                       view
                  </button></td></tr>
                    <tr><td>Birthday</td><td><input type="date" name="dob" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td>Gender</td><td><select name="gender" style="border-radius:15px; width:180px; height:30px;">
                               <option >Select</option>
                               <option value="male">Male</option>
                               <option value="female">Female</option>
                           </select></td></tr>
                    <tr><td>Mobile Number</td><td><input type="text" name="mobile" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td>Location</td><td><input type="text" name="location" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td>Choose Image</td><td><input type="file" name="image" style="border-radius:15px; width:180px; height:30px;"></td></tr>
                    <tr><td></td><td><input type="submit" value="Register" style="border-radius:15px; height:40px; width:80px"/> <input type="reset" style="border-radius:15px; height:40px; width:80px;"></td></tr>  
                    
                </table>
            </form>
            
        </div>
  
    </div>
</center>
</body>
</html>
