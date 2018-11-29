  <%@ page import ="java.sql.*" %>
  <%@ page import="java.lang.*"%>
  <%@ page import="java.util.*"%>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    out.println(user+"" +pwd);
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadveiw",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username  ='" + user + "' and password='" + pwd + "'");
    if (rs.next()) {
        
        out.println("welcome " + user);
        out.println("<a href='logout.jsp'>Log out</a>");
        session.setAttribute("user", user);
        response.sendRedirect("We_ride _website_main page.html");
    } else {
        out.println("Invalid password <a href='index.html'>try again</a>");
    }
%>

