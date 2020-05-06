<%@page import="java.sql.*"%>
<%String username=request.getParameter("username");
String password=request.getParameter("password");
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/i injection","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from admin where username='"+username+"' and password='"+password+"'");
    while(rs.next()){
        response.sendRedirect("AdminHome.jsp");
    }
    response.sendRedirect("Admin.jsp?msg=Login Failed");
}catch(Exception e){
    e.printStackTrace();
}%>
        