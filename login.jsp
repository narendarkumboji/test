<%@ page import="java.sql.*" language="java" %>
<%
Connection con=null;
Statement s=null;
String sname=request.getParameter("name");
String fname=request.getParameter("father");
String cname=request.getParameter("college");
String age=request.getParameter("age");
String uname=request.getParameter("username");
String pass=request.getParameter("password");
int ag=Integer.parseInt(age);
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
}
catch(Exception e)
{
e.printStackTrace();
}
s=con.createStatement();
int res=s.executeUpdate("insert into cmrjs values('"+sname+"','"+fname+"','"+cname+"',"+ag+",'"+uname+"','"+pass+"')");

out.println("<html><body bgcolor='wheat'><center><h1>");
if(res!=0)
out.println(sname+"you r registered");
else
out.println(sname+"you rn.t registered");
out.println("</h1></center></body></html>");

 %>