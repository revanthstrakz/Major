<%-- 
    Document   : ViewAllSearchHistory
    Created on : Feb 8, 2018, 11:00:47 AM
    Author     : kishan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title>
        Searched Items
    </title>
    <link href="style.css" rel="stylesheet" type="text/css"> 
    
    <style>
       #login{
            width:auto;
            height:auto;
            border:1px solid black;
            margin-right:180px;
           border-radius:15px;
            float:right;
            margin-right:420px;
           margin-bottom: 100px;
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
        if(document.rate.rating.value=='select'){
            alert("Please Rate The Product");
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

            
        </div>
        
           <ul>
               <li><a href="AdminHome.jsp"><h3>AdminHome</h3></a></li>
               <li><a href="Admin.jsp"><h3>LogOut</h3></a></li>
                </ul>
        
        <div id="login">
            
            
          
                <table border="1">
                    <font color="orange"><h2>All Searched Items</h2></font>
                    <tr><th>UserName</th><th>Product Name</th><th>Task</th><th>Date</th></tr>
                    <%@page import="java.sql.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%
                        try{
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from searched");
                    while(rs.next()){
                        String productname=rs.getString("productname");
                            
                       String username=rs.getString("username");
                      
                      String date=rs.getString("date");
                       String task=rs.getString("task");
                     
                      
                       
                       
%>

                   
                         <tr><td><a href="UserProfile.jsp"><%=username%></a></td>
                        <td><%=productname%></td>
 <td><%=task%></td>
 
 <td><%=date%></td></tr>

                 <%
                          }
                          }
                    catch(Exception e){
                    out.println(e);
                      }%>
                   
                    </table>
            </form>
          
                        
                    </table>
        </div>
  
    </div>
</center>
</body>
</html>


