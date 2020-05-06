<%-- 
    Document   : UpdateRank
    Created on : Feb 6, 2018, 5:23:27 PM
    Author     : kishan
--%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
                    <%@page import="com.java.ConnectionProvider" %>
                    <%String product=request.getParameter("product");
                    String username=request.getParameter("username");%>
                     <%String searched;
                   
        
                         try{ 
                       Connection con=ConnectionProvider.getConnection();
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select date from productpost");
                        while(rs.next()){
                            String date=rs.getString("date"); 
                        
                         int s=st.executeUpdate("insert into searched values('"+username+"','"+product+"','searched','"+date+"')");
                       
                    Statement st1=con.createStatement(); 
                    ResultSet rs1=st1.executeQuery("select * from productpost where productname='"+product+"'");
                    while(rs1.next()){
                        int rank=Integer.parseInt(rs1.getString("rank"));
                        int rank1=rank+1;
                       Statement st2=con.createStatement();
                       int i=st2.executeUpdate("update productpost set rank='"+rank1+"'");
                       if(i>0){
                           session.setAttribute("product",product);
                       response.sendRedirect("ViewProductDetails.jsp");
                       }
                    }
                        }
                        }catch(Exception e){
                        out.println(e);
                        } %>
                        
