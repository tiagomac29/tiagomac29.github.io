<%@page language="java" import="java.sql.*" %>
<head> 
<link rel="shortcut icon" href="coletivo-quebrada.ico" type="image/x-icon">
 <style>
  body{
   background-image: linear-gradient(180deg,rgb(0, 255, 55),rgb(0, 247, 255));
   overflow:hidden
  }
  h1{
    position:relative;
    left: 10px;
    top: 216px;
    color: rgb(255, 196, 3);
    text-shadow: 01px 01px 01px rgb(0, 0, 0);

  }

  h2{
    position:relative;
    left: 10px;
    top: 200px;
    color: rgb(240, 144, 0);
    text-shadow: 01px 01px 01px rgb(0, 0, 0);
    
  }
 </style>
</head>

<% 
        String knome = request.getParameter("txtnome");
        String kgmail = request.getParameter("txtgmail");
        int knumero = Integer.parseInt(request.getParameter("txtcelular"));
        String kselection = request.getParameter("escolhas");

        String database = "dadosvoluntario";
        String endereco = "jdbc:mysql://localhost:3306/" + database;
        String usuario = "root";
        String senha    = "";
        
        String driver = "com.mysql.jdbc.Driver"; 

        Class.forName(driver);
        Connection conexao;
        conexao = DriverManager.getConnection(endereco,usuario,senha);
        String sql = "INSERT INTO voluntarios (nome,gmail,ncelular,preferencias) values (?,?,?,?) ";

        PreparedStatement stm = conexao.prepareStatement(sql);
        stm.setString(1,knome);
        stm.setString(2,kgmail);
        stm.setInt(3,knumero);
        stm.setString(4,kselection);

        stm.execute();
        stm.close();

        out.print("<h1 align=center>cadastro concluido :) </h1>");
        out.print("<br>");
        out.print("<h2 align=center>vamos te avisar no whatsapp ou gmail(<ins>ass:</ins>Coletivo Visao de Quebrada)</h2>");
        
                
%>
