<%-- 
    Document   : testJSP
    Created on : Nov 6, 2021, 5:46:52 AM
    Author     : ub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print(request.getParameter("temperature"));

//            out.print(request.getParameter("b1"));
//            out.print(request.getParameter("b2"));
            if ((request.getParameter("b1")) != null) {
                out.print(" Fahrenheit to ");
                out.print( (5.0/9.0)*(Double.valueOf(request.getParameter("temperature"))-32.0));
                out.print(" Celsius ");
            } 
            
            if((request.getParameter("b2")) != null){
                out.print(" Celsius to ");
                out.print( ((9.0/5.0)*(Double.valueOf(request.getParameter("temperature")))+32.0));
                out.print(" Fahrenheit ");
            }
        %>
        <br>
        
        <form action="testJSP1.jsp" >
            Temperature Fahrenheit <-> Temperature Celsius :
            <input type="text" name="temperature" value="" size="80" />
            Fahrenheit to Celsius
            <input type="submit" name="b1" value="Temperature Fahrenheit" />
            <br>
            Celsius to Fahrenheit
            <input type="submit" name="b2" value="Temperature Celsius" />
        </form>

       
        
    </body>
</html>
