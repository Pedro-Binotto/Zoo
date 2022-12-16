<%-- 
    Document   : consultarAnimais
    Created on : 12 de fev. de 2022, 15:10:32
    Author     : pedro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="br.edu.ifrs.restinga.modelo.Zoo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilos.css" type="text/css"/>
        <title>Consultar Animais</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div id="principal">
            <div id="conteudo">
                <h1>Lista de Animais</h1>
                <hr>
                <div id="menu">
                    <ul class="item_menu">
                        <li><a href="formulario.html">Inserir </a></li>
                        <li><a href="index.html">Voltar para o Inicio</a></li>
                    </ul>
                    <table border="1">
                        <tr>
                            <td><b>Espécie</b></td>
                            <td><b>Classe</b></td>
                            <td><b>Peso</b></td>
                            <td><b>Idade</b></td>
                        </tr>
                        <%
                            List<Zoo> zoo = (List<Zoo>)request.getAttribute("resultado");
                            for (int i=0; i<zoo.size(); i++) {
                                Zoo z = zoo.get(i);
                        %>
                        <tr>
                            <td><%= z.getEspecie()%></td>
                            <td><%= z.getClasse()%></td>
                            <td><%= z.getPeso()%></td>
                            <td><%= z.getIdade()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </div>
            </div>                
        </div>  
    </body>
</html>