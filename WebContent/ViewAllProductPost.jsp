<html>
<head>
    <title>
        View ALl Product Post
    </title>
    <link href="style.css" rel="stylesheet" type="text/css">  
    <style>
        #post{
            width:800px;
            height:auto;
            border:1px solid E0FF33;
            border-radius: 15px;    
            background-color: E0FF33;
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
  <div id="post"> 
      <%@page import="java.sql.*"%>
      <%@page import="com.java.ConnectionProvider"%>
      <% 
          try{
              Connection con=ConnectionProvider.getConnection();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from productpost");
       %>
      <form name="product" method="post" action="ProductPost" enctype="multipart/form-data">
          <table border="1" width="50" style="border-radius:15px;border-style:none" >
              <tr><th>Product name</th><th>Product Image</th><th>Product Manufacture</th><th>Product Price</th><th>Description(Encrypted)</th><th>Uses</th><th>Upload Date</th><th>Rank</th><th>Rating</th><th>View Reviews</th></tr>
          <%  while(rs.next()){ 
              String image=rs.getString("filename");
              String productname=rs.getString("productname");
          %>
              <tr><td><%=productname%></td><td><image src="Gallery/<%=image%>" width="60" height="60" style="border-radius:100px " /></td><td><%=rs.getString("manufacturer")%></td><td><%=rs.getString("productprice")%></td><td><%=rs.getString("description")%></td><td><%=rs.getString("postuses")%></td><td><%=rs.getString("date")%></td><td><%=rs.getString("rank")%></td><td><%=rs.getString("rating") %></td><td><abbr title="To View Reviews"><a href="ViewReview.jsp?productname=<%=productname%>">Click</a></abbr></td></tr> 
       <%   }
}catch(Exception e){
e.printStackTrace();
}%>    
          </table>
          
      </form>
 </div>     
    </div>
</center>
</body>
</html>
