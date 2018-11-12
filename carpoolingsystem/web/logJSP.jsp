<%-- 
    Document   : logJSP
    Created on : 12 Nov, 2018, 6:58:39 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //out.println("Hello");
        String uname = request.getParameter("user");
        String pass = request.getParameter("password");
       // out.print(uname);
        try
        {
            String myUrl= "jdbc:mysql://localhost:3306/acadveiw";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(myUrl,"root","");
            String query = "Select username,password from users where username ='"+uname+"'and password ='"+pass+"'";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if(rs.next())
            out.println("logged in successfully\n");
            else
            out.println("invalid username or password\n");
           /// out.print("\nWelcome : "+uname);
        }
        catch(Exception e)
        {
                    System.err.println("got an exception");
                    System.out.println(e.getMessage());
        }
        

    
%>
    </body>
</html>
