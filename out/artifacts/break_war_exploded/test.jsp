<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>TEST</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
    Connection conn=null;

    Boolean connect=false;
    try{
        Context init = new InitialContext();
        DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/break");

        conn = ds.getConnection();
        connect = true;
    }catch(Exception e){
        connect=false;
        e.printStackTrace();
    }

    if(connect){
        System.out.println("연결o");
    }else{
        System.out.println("연결x");
    }
        %>
</body>
</html>

