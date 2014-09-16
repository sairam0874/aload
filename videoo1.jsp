<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>


<style type="text/css">
.button {
   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#3e779d), to(#65a9d7));
   background: -webkit-linear-gradient(top, #33FFFF, #65a9d7);
   background: -moz-linear-gradient(top, #33FFFF, #65a9d7);
   background: -ms-linear-gradient(top, #33FFFF, #65a9d7);
   background: -o-linear-gradient(top, #33FFFF, #65a9d7);
   padding: 5px 5px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: block;
   }
   .button1 {
   border-top: 1px solid red;
   background: red;
   background: -webkit-gradient(linear, left top, left bottom, from(green), to(green));
   background: -webkit-linear-gradient(top, green);
   background: -moz-linear-gradient(top, green);
   background: -ms-linear-gradient(top, green);
   background: -o-linear-gradient(top, green);
   padding: 5px 5px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   }

   </style>
<title>Index</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />

</head>


<body>

<div id="Container"> 
 
  <font color="#339999" size="8" face="Times New Roman, Times, serif"><i><b>&nbsp;&nbsp;&nbsp;&nbsp; 
  &nbsp;&nbsp;Game-Theoretic Pricing for Video &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Streaming 
  in Mobile Networks</i></b></font>
  <br>

<font color="#CC3300" size="5" face="Times New Roman, Times, serif"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</i></font>

  <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
           <li><a class="current" href="user1.jsp">Home</a></li>
            <li><a href="video.jsp">Download Video</a></li>
         <li><a href="my_video.jsp">My Video</a></li>
			  <li><a href="send1.jsp">Send File</a></li>
			   <li><a href="receiver.jsp">Received Files</a></li>
			   <li><a href="my.jsp">My Account</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div id="banner">
  <br>

<div style="position:absolute; left:124px;  top:275px;">
  <img src="images/122 copy.jpg" width="400" height="260">
  </div>
<div style="position:absolute; left:134px;  top:305px;">			
<table border="0" align="center"  width="380">
       
        <tr> 
		
          <td align="center" ><font color="#000000"><B> </B></font></td>
		   
		            <td  align="center" ><font color="#000000"><B></B></font></td>
					</tr>



  					 
<%
    
String file_name1=null;
PreparedStatement ps1 = null;
	ResultSet rs1 = null;
	Connection con1=null;

	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
			con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","game","game");
	//	Connection con1 = databasecon.getconnection();

		ps1 = con1.prepareStatement("select file_name from video");
		rs1 = ps1.executeQuery();
while(rs1.next())
{


file_name1=rs1.getString(1);

%>
 
        <tr> 
		<td align="center">
           <font color="#33FFFF"><b><%=file_name1%></b></font>
          </td>
          
		  
          </td><td align="center" >
            <a href="videoo1.jsp?id=<%=file_name1%>"><u><font color="#FFFFFF"><b>Download</b></font></u></a>
          </td>
		  
		
		
        
        </tr>
 
      
	
	   
        <%
}
%>
        <%

}
catch(Exception e2)
{
out.println(e2.getMessage());

}

  String a=(String)session.getAttribute("userid");
String file_name=request.getParameter("id");

String s=" ";
file_name=file_name.replace("%20",s);
PreparedStatement ps = null;
	ResultSet rs = null;
		Connection con=null;

	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","game","game");
		//Connection con = databasecon.getconnection();

		ps = con.prepareStatement("select file1 from video where file_name='"+file_name+"'");
		rs = ps.executeQuery();
   while(rs.next())
		{
		file_name=rs.getString(1);		
		
		}
		session.setAttribute("file_name",file_name);
		}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</table>
 </div> 

<div style="position:absolute; left:554px;  top:275px;">
  <img src="images/122 copy.jpg" width="400" height="260">
  </div>
  

	<div style="position:absolute; left:594px;  top:305px;">
	<center>
				
<!-- 
 <video width="340" height="200">
  <source src="video\<%=file_name%>" type="video/mp4" />
  
  <source src="video\<%=file_name%>" type="video/ogg" />
  <source src="video\<%=file_name%>" type="video/webm" />
  <object data="video\<%=file_name%>" width="320" height="240">
    <embed src="video\<%=file_name%>" width="320" height="240" />
  </object> 
</video>
 -->
<%//System.out.println("cccc"+file_name);%>

 <video width="360" height="200" controls="controls" autoplay="autoplay">
  <source src="video\<%=file_name%>" type="video/mp4" />
  
  <source src="video\<%=file_name%>" type="video/ogg" />
  <source src="video\<%=file_name%>" type="video/webm" />
  <object data="video\<%=file_name%>" width="320" height="240">
    <embed src="video\<%=file_name%>" width="320" height="240" />
  </object> 
</video>

</center>
 </div> 
 <br>
  <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
   <br> <br>  <br> <br>  <br> <br>  <br> 
 <form action="download1.jsp" onSubmit="return validation()">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
 
 
<a href="video.jsp"><b><font color="#000033" face="Verdana, Arial, Helvetica, sans-serif" class="button1">Back</font></b></a>
   <input type="submit" value="Download This Video">
</form>
</div>


	 </div>
	<div style="position:absolute; left:740px;  top:214px;"> 
	
	<font color="#FFFFFF" face="Times New Roman, Times, serif" size="2">
	<i><u><b>Welcome:<font color="#00FF66" size="+3"><b> <%=a%>!</b></font></b></u></i></font>
	<br>
	
	&nbsp;&nbsp;<a href="logout.jsp">
	<font color="#33FFFF" face="Times New Roman, Times, serif" size="4">
	<i><u><b>Logout</b></u></i></font></a>
	
	</div>
	
  <div id="footer">
   
  </div>
<!--END OF FOOTER--> 
</div>
</body>
</html>
