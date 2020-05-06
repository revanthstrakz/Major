<%-- 
    Document   : Decryption
    Created on : Feb 6, 2018, 5:43:33 PM
    Author     : kishan
--%>
<%@page import="java.sql.*" %>
  <%@page import="com.java.ConnectionProvider" %>
    <%String product=request.getParameter("product");%>
  <% try{
     Connection con=ConnectionProvider.getConnection();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from productpost where productname='"+product+"'");
     while(rs.next()){
         String description=rs.getString("description");
        PreparedStatement pst=con.prepareStatement("update productpost set description = AES_DECRYPT('?','12345')");
        pst.setString(1,description);
       
         
     }
  }catch(Exception e){
      out.println(e);
  } %>

