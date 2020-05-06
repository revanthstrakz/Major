<%-- 
    Document   : RecommendDB
    Created on : Feb 6, 2018, 10:18:59 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>

<% String username=(String)session.getAttribute("username");%>

                    <%try{
                        String recommendname=request.getParameter("recommendname");
                        String productname=request.getParameter("product");
                        String rating=request.getParameter("rating");
                        Connection con=ConnectionProvider.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from productpost where productname='"+productname+"'");
                    while(rs.next()){
                     String  cost=rs.getString("productprice");
                     String date=rs.getString("date");
                     String rank=rs.getString("rank");
                     Statement st1=con.createStatement();
                     int i=st1.executeUpdate("insert into recommend values('"+username+"','"+recommendname+"','"+productname+"','"+cost+"','"+date+"','"+rank+"','"+rating+"')");
                     if(i>0){%>
                     <script type="text/javascript">
    window.alert("Successfully Recommended");
    window.location="ViewProductDetails.jsp";
    </script>
                         <%}
                     else{%>
                     <script type="text/javascript">
    window.alert("Recommendation Failed");
    window.location="ViewProductDetails.jsp";
    </script>
            <% }
}
}catch(Exception e){
    out.println(e);
}%>