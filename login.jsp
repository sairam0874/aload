<%@ page import="java.sql.*" %>
<%!
int i0=0,i=0,i2=0,i3=0;
%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
Statement st=con.createStatement();
try{
 i0 = st.executeUpdate("delete from server_status ");
}
catch(Exception e0){System.out.println("exe 0");}
try{
 i = st.executeUpdate("delete from user");
}
catch(Exception e){System.out.println("exe 1");}
try{
i2 = st.executeUpdate("drop table user");
}
catch(Exception e){System.out.println("exe 2");}
try{
i3 = st.executeUpdate("create table user(id MEDIUMINT NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL, PRIMARY KEY (id))");
}
catch(Exception e){System.out.println(e);}

//System.out.println(i3);

%>

<%
String un=request.getParameter("uid");
String pwd=request.getParameter("pwd");

if(un.equals("admin")&&pwd.equals("admin"))
{
	response.sendRedirect("admin.jsp");
}
else{
response.sendRedirect("index.jsp?messege=ERROR");
}
%>