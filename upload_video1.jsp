<%@ page import="java.sql.*,databaseconnection.*"%>

<html>
<head>
<title>game</title>

</head>

<body>
<%
String a=request.getParameter("file");
String b=request.getParameter("video");
String c1=request.getParameter("c1");
String c2=request.getParameter("c2");
String c3=request.getParameter("c3");
String cat=request.getParameter("cat");
PreparedStatement ps = null;
ResultSet rs = null;
Connection con=null;
int count=0;
	
	if(c1.equals("on"))
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		ps = con.prepareStatement("insert into cloud1(file_name,file1,category) values(?,?,?)");
		ps.setString(1,a);
		ps.setString(2,b);
				ps.setString(3,cat);
		ps.executeUpdate();
		count++;
	}
	catch(Exception e1)
	{
	System.out.println(e1);
	}
	}

	//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	if(c2.equals("on"))
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		ps = con.prepareStatement("insert into cloud2(file_name,file1,category) values(?,?,?)");
		ps.setString(1,a);
		ps.setString(2,b);
						ps.setString(3,cat);
		ps.executeUpdate();
		count++;
	}
	catch(Exception e1)
	{
	System.out.println(e1);
	}
	}

	//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
	if(c3.equals("on"))
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		ps = con.prepareStatement("insert into cloud3(file_name,file1,category) values(?,?,?)");
		ps.setString(1,a);
		ps.setString(2,b);
						ps.setString(3,cat);
		ps.executeUpdate();
		count++;
	}
	catch(Exception e1)
	{
	System.out.println(e1);
	}
	}

	//System.out.println(count);
	response.sendRedirect("add.jsp?id=succ");
	
%>
</body>
</html>
