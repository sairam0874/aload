<%@ page import="java.sql.*"%>
<%@ include file="header.jsp"%>
<%! String s1=null,s2="Not",s3="Not";%>










<%		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		String sql1="SELECT COUNT(SERVER) FROM server_status WHERE SERVER='cloud1'";

		ResultSet rs=st.executeQuery(sql1);
		if(rs.next())
		{
			s1=rs.getString(1);
		}
		String sql2="SELECT COUNT(SERVER) FROM server_status WHERE SERVER='cloud2'";
		Statement st2=con.createStatement();
		ResultSet rs2=st2.executeQuery(sql2);
		if(rs2.next())
		{
			s2=rs2.getString(1);
		}
		String sql3="SELECT COUNT(SERVER) FROM server_status WHERE SERVER='cloud3'";
		Statement st3=con.createStatement();
		ResultSet rs3=st3.executeQuery(sql3);
		if(rs3.next())
		{
			s3=rs3.getString(1);
		}
		}
		catch(Exception e){
		System.out.println(e);
		}


		//out.println(s1+"  "+s2+"  "+s3);%>
		<table>
		<tr><td>
			<td><img src="images/c1.jpg" width="225" height="225" border="0" alt=""></td>
			<td><img src="images/c2.jpg" width="225" height="225" border="0" alt=""></td>
			<td><img src="images/c3.jpg" width="225" height="225" border="0" alt=""></td>
		</tr>
		<tr><td><h3>Active Status:
			<td align=center><font color=red size=4><b><%=s1%> In Active</td>
			<td align=center><font color=red size=4><b><%=s2%> In Active</td>
			<td align=center><font color=red size=4><b><%=s3%> In Active</td>
		</tr>
		</table>










<%@ include file="footer.jsp"%>