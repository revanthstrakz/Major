<%-- 
    Document   : Recommand
    Created on : Feb 6, 2018, 6:05:54 PM
    Author     : kishan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>

<% String username=(String)session.getAttribute("username");%>

<html>
<head>
    <title>
        Recommend
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:290px;
            height:auto;
            border:1px solid black;
            margin-right:300px;
            border-radius:15px;
            float:right;
            margin-top:100px;
            background-color: #00ffff;
           
        }
        #login tr td {
            padding:10px;
            text-decoration: none;
        } 
        #login a{
            
            text-decoration: none;
        }
        #login a:hover:not(.active) {
    background-color: pink;
      }
        #adminimage{
            
            background-repeat: no-repeat;
            width:200px;
            height:240px;
          
            margin-top:170px;
            margin-right:550px
            
        }
    </style>
    <script>
        function validate(){
            if(document.recommend.recommendname.value=='select'){
                alert("Please Select User");
                return false;
            }
            return true;
        }
        </script>
</head>
<body>
<center><div id="main">
        
        <div id="header">
            
           <font color="red" size="10">I injection: Toward effective collaborative filtering using uninteresting items.</font>

       
           <div id="adminimage">
               <h3>Hello MR:<%=username %></h3>
            <image src="images/users.jpg" style="width:300px;height:200px"/>  
            </div>
            
        </div>
        
           <ul>
               <li><a href="UserHome.jsp"><h3>Home</h3></a></li>
               <li><a href="UserLogin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            
            <h2><font color="red">Recommend</font></h2>
            <form action="RecommendDB.jsp" method="post" name="recommend" onsubmit="return validate()">
                <table>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%try{
                        String rating=request.getParameter("rating");
                        String product=request.getParameter("product");
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from register where username!='"+username+"'");
                    
%>               <%-- hidden concept --%>
                    <tr><td><input type="hidden" name="rating" value="<%=rating%>"/></td></tr>
                    <tr><td><input type="hidden" name="product" value="<%=product%>"/></td></tr>
                    <tr><td>Recommend To</td><td><select name="recommendname" style="width:110px">
                                <option>select</option>
                                <%while(rs.next()){
                        String username1=rs.getString("username");%>
                                <option><%=username1%></option>
                                
                                <%}
                       }
                    catch(Exception e){
                    out.println(e);
                      }%>
                                 </select></td></tr>
                   
                   
                    <tr><td></td><td><input type="submit" value="Recommend"></td></tr>
                    
                    </table>
            </form>
        </div>
  
    </div>
</center>
</body>
</html>


