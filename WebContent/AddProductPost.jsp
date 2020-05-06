<html>
<head>
    <title>
        Product Post
    </title>
    <link href="style.css" rel="stylesheet" type="text/css">  
    <style>
        #post{
            width:400px;
            height:auto;
            border:1px solid black;
            border-radius: 15px;    
            background-color: 4CFF33;
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
        <%String msg=request.getParameter("msg");
        if(msg!=null){ %>
        <%=msg %>
        <%}%>
        
  <div id="post">  
      <form name="product" method="post" action="ProductPost" enctype="multipart/form-data">
          <table>
              <tr><td>Product name</td><td><input type="text" name="product" style="border-radius:15px; width:180px; height:30px;" required/></td></tr>
              <tr><td>Price</td><td><input type="text" name="price"  style="border-radius:15px; width:180px; height:30px;" required/></td></tr>
              <tr><td>Manufacturer</td><td><input type="text" name="manufacturer" style="border-radius:15px; width:180px; height:30px;" required/></td></tr>
              <tr><td>Post Description</td><td><textarea name="description" rows="4" cols="50" style="border-radius:15px; width:180px; height:80px;"></textarea></td></tr>
              <tr><td>Post Uses</td><td><textarea name="postuses" rows="4" cols="50" style="border-radius:15px; width:180px; height:80px;"></textarea></td></tr>
              <tr><td>Choose Post Image</td><td><input type="file" name="image" style="border-radius:15px; width:180px; height:30px;" ></td></tr>
              <tr><td><input type="submit" value="Add Post"></td></tr>
          </table>    
      </form>
 </div>     
    </div>
</center>
</body>
</html>
