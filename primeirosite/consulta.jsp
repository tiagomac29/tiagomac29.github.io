<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        String database = "dadosvoluntario";
        String endereco = "jdbc:mysql://localhost:3306/" + database;
        String usuario = "root";
        String senha    = "";

        String driver = "com.mysql.jdbc.Driver"; 

        Class.forName(driver);
        Connection conexao;
        conexao = DriverManager.getConnection(endereco,usuario,senha);

        String sql= "SELECT * FROM voluntarios";
        
        PreparedStatement stm = conexao.prepareStatement(sql);
        
        ResultSet dados = stm.executeQuery();
          
        out.print("<table border = 1>");
        out.print("<tr>");
        out.print("<th>codigo</th>");
        out.print("<th>nome</th>");
        out.print("<th>gmail</th>");
        out.print("<th>ncelular</th>");
        out.print("<th>preferencias</th>");
        out.print("</tr>");

        while(dados.next())
        {
          out.print("<tr>");
            out.print("<td>");
            out.print(dados.getString("codigo"));
            out.print("</td>");
           
            out.print("<td>");
            out.print(dados.getString("nome"));
            out.print("</td>");
           
            out.print("<td>");
            out.print(dados.getString("gmail"));
            out.print("</td>");
           
            out.print("<td>");
            out.print(dados.getString("ncelular"));
            out.print("</td>");

            out.print("<td>");
            out.print(dados.getString("preferencias"));
            out.print("</td>");
          out.print("</tr>");
            

        }


    %>
</body>
</html>

