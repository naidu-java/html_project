<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("firstn");
    String lname = request.getParameter("lastn");
    String email = request.getParameter("email");
    String user = request.getParameter("user");    
    String pwd = request.getParameter("pass");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadveiw","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into user(fname, lname, email, userid, password) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
