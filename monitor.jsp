<%@ page import="java.sql.*"%>
<%!
int no1=0;
Connection con=null;
Statement st= null;
ResultSet rs=null;
String s1=null;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Your Company</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="page-out">
<div class="page-in">
<div class="page">
<div class="main">
<div class="header">
<div class="header-top">
<h1>A Load Balancing Model Based on <span>Cloud Partitioning
for the Public Cloud <span></span></h1>
</div>
<div class="header-bottom">

</div>
 <div class="topmenu">
<ul>
  <li
 style="background: transparent none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; padding-left: 0px;"><a
 href="admin.jsp"><span>Home</span></a></li>
  <li><a href="add.jsp"><span>Add Videos</span></a></li>
  <li><a href="clouds.jsp"><span>Clouds</span></a></li>
    <li><a href="monitor.jsp"><span>Monitor</span></a></li>

</ul>
</div> 
</div>
<div class="content">
<div class="content-left">
<div class="row1">
<!-- Main content-->



<br><br>
<h1 class="subtitle"><span><b>Server Status</span>
<br><br>

<table  width="100%" height="70%" cellspacing=5 cellpadding=5 >
<%try{
		Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		 st=con.createStatement();
}
catch(Exception e)
{
	System.out.println(e);
}%>



<th bgcolor=#000000 ><font  face="Felix Titling" color=white>S No.</th><th bgcolor=#000000 ><font  face="Felix Titling" color=white>Server<th bgcolor=#000000 ><font  face="Felix Titling" color=white>Total Con</th><th bgcolor=#000000 ><font  face="Felix Titling" color=white>Avail Connections</th><th bgcolor=#000000 ><font  face="Felix Titling" color=white>Status</th>
<tr><td align=center bgcolor=#b1b1b1>1<td align=center bgcolor=#e0e0e0>Cloud I <td align=center bgcolor=#b1b1b1>3<td align=center bgcolor=#e0e0e0>

<%  rs=st.executeQuery("SELECT  COUNT(NO)  FROM server_status WHERE SERVER='cloud1' ");
if(rs.next())
{
	no1=rs.getInt(1);
	no1=3-no1;
	out.println(no1);
}
%>
<td align=center bgcolor=#b1b1b1>
<%  rs=st.executeQuery("SELECT  STATUS FROM server_status WHERE NO=(SELECT MAX(NO) FROM server_status WHERE SERVER='cloud1')" 
);

s1="Idle";
while(rs.next())
{
	s1=rs.getString(1);
	
}
out.println(s1);
%>
<!-- ROW 2 -->
<tr><td align=center bgcolor=#b1b1b1>2<td align=center bgcolor=#e0e0e0>Cloud II <td align=center bgcolor=#b1b1b1>3<td align=center bgcolor=#e0e0e0>

<%  rs=st.executeQuery("SELECT  COUNT(NO)  FROM server_status WHERE SERVER='cloud2' ");
if(rs.next())
{
	no1=rs.getInt(1);
	no1=3-no1;
	out.println(no1);
}
%>
<td align=center bgcolor=#b1b1b1 bgcolor=#e0e0e0>
<%  rs=st.executeQuery("SELECT  STATUS FROM server_status WHERE NO=(SELECT MAX(NO) FROM server_status WHERE SERVER='cloud2')" 
);

s1="Idle";
while(rs.next())
{
	
	s1=rs.getString(1);
	
}
out.println(s1);
%>

<!-- ROW 3 -->
<tr><td align=center bgcolor=#b1b1b1>3<td align=center bgcolor=#e0e0e0>Cloud III <td align=center bgcolor=#b1b1b1>3<td align=center bgcolor=#e0e0e0>

<%  rs=st.executeQuery("SELECT  COUNT(NO)  FROM server_status WHERE SERVER='cloud3' ");
if(rs.next())
{
	no1=rs.getInt(1);
	no1=3-no1;
	out.println(no1);
}
%>
<td align=center bgcolor=#b1b1b1	>
<%  rs=st.executeQuery("SELECT  STATUS FROM server_status WHERE NO=(SELECT MAX(NO) FROM server_status WHERE SERVER='cloud3')" 
);

s1="Idle";
while(rs.next())
{
	
	s1=rs.getString(1);

}
	out.println(s1);
	
%>
<% 
con.close();
st.close();
rs.close();

%>
</td></tr>

</table>
&nbsp;<br><br><br><br><br>
<!-- ////////Main content-->
</div>
</div>


<div class="content-right">
<div class="mainmenu">
<!-- side content-->


</div>
</div>
</div>
</div>
<div class="footer">
<!--DO NOT Remove The Footer Links-->
<!--Designed by--><a href="http://www.htmltemplates.net">
<img src="images/footer.gif" alt="html templates" border="0" height="1" width="1"></a>
<!--In partnership with--><a href="http://websitetemplates.net">
<img src="images/footer.gif" alt="website templates" border="0" height="1" width="1"></a>
<p>&copy; Copyright 2010. Designed by <a target="_blank"
 href="http://www.htmltemplates.net">htmltemplates.net</a>
<!--DO NOT Remove The Footer Links-->
</p>
<ul>
  <li style="border-left: medium none;"><a href="index.html"><span>Home</span></a></li>
  <li><a href="#"><span>About&nbsp;us</span></a></li>
  <li><a href="#"><span>What's&nbsp;new</span></a></li>
  <li><a href="#"><span>Services</span></a></li>
  <li><a href="#"><span>Contact</span></a></li>
  <li><a href="#"><span>Resources</span></a></li>
  <li style="padding-right: 0px;"><a href="#"><span>Links</span></a></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
