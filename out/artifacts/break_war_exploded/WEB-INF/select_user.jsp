<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="db.DBConnUtils" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<%
    Connection conn = DBConnUtils.getConnection();
    PreparedStatement pstmt = null;

    String query = "select * from user";

    pstmt = conn.prepareStatement(query);
    ResultSet rs = pstmt.executeQuery();
    conn.close();
    pstmt.close();

%>
<table border="1">
    <tr>
        <td>닉네임</td>
        <td>점수</td>
    </tr>

    <%
        while(rs.next()){
    %>
    <tr>
        <td><%=rs.getString("nickname") %></td>
        <td><%=rs.getString("score") %></td>
    </tr>

    <%
        }
    %>
</table>

</body>
</html>