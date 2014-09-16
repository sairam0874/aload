<%@ page import="java.sql.*"%>
<%@ page import="javax.swing.JOptionPane"%>
<%@ page import="Server.ServerStatus"%>
<%
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
out.println("sss   "+con);
Statement st=con.createStatement();

String sql="insert into user (name) values ('user')";
//System.out.println(sql);
int i=st.executeUpdate(sql);
//System.out.println("iiii"+i);
if(i>0){

Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
//out.println(con);
Statement st2=con2.createStatement();

String sq="select max(id) from user";
ResultSet rs=st2.executeQuery(sq);
int t=0;
if(rs.next())
	{

t=rs.getInt(1);
if(t==1||t==2||t==3)
{

JOptionPane.showMessageDialog(null, "Redirecting to Cloud 1 !");

}
else if(t==4||t==5||t==6)
{
JOptionPane.showMessageDialog(null, "Redirecting to Cloud 2 !");
}
else if(t==7||t==8||t==9)
{
JOptionPane.showMessageDialog(null, "Redirecting to Cloud 3 !");
}
else
{
JOptionPane.showMessageDialog(null, "Maximum Connections are crossed...");


response.sendRedirect("index.jsp");
}
try{
//Thread.sleep(1000);
}
catch(Exception e)
{}

ServerStatus.count(t);
try{
Thread.sleep(1000);
}
catch(Exception e)
{}

ServerStatus.setC(t);

}
response.sendRedirect("userhome.jsp?id='"+t+"'");
}
else{
out.println("sssssssss");
}}
catch(Exception e)
{
	System.out.println(e);
	e.printStackTrace();
}
%>

