
<%@ page import="java.sql.*" %>

<%

String userName=request.getParameter("admin_name");
String secretWord=request.getParameter("password_admin");


            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded successfully");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/internship", "root", "root");

            System.out.println("Connection build");

            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            System.out.println("Statement Created");

               ResultSet rs = stmt.executeQuery("SELECT * FROM admin WHERE admin_name ='"+userName+"' AND password ='"+secretWord+"'"); 
        while(rs.next()){
String dbUser = rs.getString("admin_name");
String dbPassword= rs.getString("password");

if ((userName.equals(dbUser)) && (secretWord.equals(dbPassword))){
            
            response.sendRedirect("student_info.jsp");
            }
        else
            response.sendRedirect("index.jsp");

%>