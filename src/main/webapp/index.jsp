<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Optional" %>

<%! String server = Optional.ofNullable(System.getenv("DB_SERVER")).orElse("localhost"); %>
<%! String port = Optional.ofNullable(System.getenv("DB_PORT")).orElse("5432"); %> 
<%! String url = "jdbc:postgresql://" + server + ":" + port + "/modulo1"; %> 
<%! String user = Optional.ofNullable(System.getenv("DB_USER")).orElse("postgres"); %> 
<%! String password = Optional.ofNullable(System.getenv("DB_PASSWORD")).orElse("root"); %> 
<%! String sql = "SELECT nombre FROM public.estudiante"; %> 



<!doctype html>
<html>
     <head>
          <meta http-equiv="content-type" content="text/html; charset=UTF-8">
          <script src="https://kit.fontawesome.com/b523750ed6.js" crossorigin="anonymous"></script>
          <link type="text/css" rel="stylesheet" href="app.css">   
          <title>Diplomado</title>
     </head>
     <body>
          <div id="header">
               <h1>Curso De Desarrollo De Software</h1>
          </div>
          <div class="container">
               <%
 
                    try {				
                         
                         Class.forName("org.postgresql.Driver");
                         Connection conn = DriverManager.getConnection(url, user, password);
                         PreparedStatement statement = conn.prepareStatement(sql);
                         ResultSet result = statement.executeQuery();
                         
                         while(result.next()){

                              out.println("<div class=\"estudiante\">");
                              out.println("<i class=\"fa-solid fa-image-portrait\"></i>");
                              out.print("<label class=\"nombre\">");
                              out.print(result.getString(1));
                              out.println("</label>");
                              out.println("</div>");
                         }
                         
                    } catch (SQLException e) {
                         out.print(e.getMessage());
                    }

               %>
          </div>
          <div id="footer"></div>
     </body>
</html>
