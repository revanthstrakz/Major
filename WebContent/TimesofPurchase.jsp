<%-- 
    Document   : TimesofPurchase
    Created on : Feb 8, 2018, 2:45:57 PM
    Author     : kishan
--%>
<%@page import="java.sql.*" %>
<%@page import="com.java.ConnectionProvider" %>
<%@page import="com.java.ProductPost"%>
<% String username=(String)session.getAttribute("username");  %>
<%String productname=request.getParameter("value1");
String productcost=request.getParameter("value2"); 
String rank=request.getParameter("value3"); 
String rating=request.getParameter("value4"); 
try{ int count=0;
    Connection con=ConnectionProvider.getConnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select count(*) from purchase where productname='"+productname+"'");
    while(rs.next()){
        count=rs.getInt(1);
        if(count!=0){
    Statement st1=con.createStatement(); 
    ResultSet rs1=st1.executeQuery("select * from purchase where productname='"+productname+"'");
    while(rs1.next()){
        int count1=Integer.parseInt(rs1.getString("timesofpurchase"));
        System.out.println(count1);
        if(count1>=1){
            int count2=count1+1;
            Statement st2=con.createStatement();
            int i=st2.executeUpdate("update purchase set timesofpurchase='"+count2+"' where productname='"+productname+"'");
            if(i>0){%>
            <script type="text/javascript">
    window.alert("Your Product is Successfully Purchased");
    window.location="ViewProductDetails.jsp";
    </script>    
        <%}
    }
else{

session.setAttribute("username", username);
session.setAttribute("productname", productname);
session.setAttribute("productcost", productcost);
session.setAttribute("rank", rank);
session.setAttribute("rating",rating);
response.sendRedirect("Purchase.jsp");


}

}
}
else{
session.setAttribute("username", username);
session.setAttribute("productname", productname);
session.setAttribute("productcost", productcost);
session.setAttribute("rank", rank);
session.setAttribute("rating",rating);
response.sendRedirect("Purchase.jsp");
}
}
}catch(Exception e){
    out.println(e);
}
%>

