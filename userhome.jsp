 <%@ page import="java.sql.*" %>
<%!
  String file_name=null;
%>
 <%
String no=request.getParameter("id");
		session.setAttribute( "no", no );
//System.out.println(no);
String server=null;
%>
<%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		String sql="SELECT SERVER FROM server_status WHERE NO="+no+" ";
		//System.out.println(sql);
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{
			server=rs.getString(1);
		}
		session.setAttribute( "cloud", server );
		
		}
		catch(Exception e){System.out.println("$$$$"+e);}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--  Designed by w w w . t e m p l a t e m o . c o m  --> 

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>user</title>

<meta name="keywords" content="free website template, blog template, blog layout, Black Media Website, XHTML" />

<meta name="description" content="Black Media Website - free CSS template, Free HTML CSS Layout" />

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

</head>

<body>
	<div id="templatemo_background_section_top">
    
    	<div class="templatemo_container">
		
        	<div id="templatemo_header">
				<div id="templatemo_logo_section">            
		        	<h1>VideoWood</h1>            

				</div>
                <div id="templatemo_search_box">
	                <form action="#" method="post">
    	            	<input name="search" type="text" id="textfield" value=""/>
        	            <input type="submit" name="Search" value="" alt="Search" id="button" title="Search" />
					</form>
                </div>
         	</div><!-- end of headder -->
                
    		<div id="templatemo_menu_panel">
            
    			<div id="templatemo_menu_section">
                
            		<ul>
		                <li><a href="#"  class="current">Home</a></li>
                         
		            </ul> 
                    
				</div>
                
		    </div> <!-- end of menu -->
            
		</div><!-- end of container-->
        
	</div><!-- end of templatemo_background_section_top-->
    
    <div id="templatemo_background_section_middle">
    
    	<div class="templatemo_container">
        
        	<div id="templatemo_left_section">
            	
                <div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Welcome User</h1>
                    </div>
                    <div class="templatemo_post_mid">
                    <div class="clear"></div>
                        </div>
                   
				</div><!-- end of templatemo_post-->
                
                <div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Movie Videos</h1>
                    </div>
                    <div class="templatemo_post_mid">
                    <%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select file_name from "+server+" where category='mov'");
		%><table align=center><%
		while(rs.next())
		{
			
			%>
			<td>
			<table height=105 width=105	 background="images/play.png">
			<tr><td align=center><a href="video.jsp?fileN=<%=rs.getString(1)%>"><u><font color="#cc0000" size= 5><u><b><%=rs.getString(1)%></u></b></font></u></a>
			</td></tr></table>
			
			
			<%
		}	
		}
		catch(Exception e){System.out.println(e);}
%><!--/////////////////////////  -->
					
		</td></tr></table>			
					<br><br>

						
						<div class="clear">             	        	
                        </div>
                        
                  
                    
				</div><!-- end of templatemo_post-->
                
            </div><!-- end of left section-->
            
            
			
		
<!-- 2222222222222222222222222222222 -->			

<div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Cricket Videos</h1>
                    </div>
                    <div class="templatemo_post_mid">
                    	
                        <!-- cccccccccccc -->

                 <%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select file_name from "+server+" where category='cri'");
		%><table align=center><%
		while(rs.next())
		{
			
			%>
			<td>
			<table height=105 width=105	 background="images/play.png">
			<tr><td align=center><a href="video.jsp?fileN=<%=rs.getString(1)%>"><u><font color="#cc0000" size= 5><u><b><%=rs.getString(1)%></u></b></font></u></a>
			</td></tr></table>
			
			
			<%
		}	
		}
		catch(Exception e){System.out.println(e);}
%>
					
		</td></tr></table>			
					<br><br>

                        <!-- cccccccccccc -->
                    
                        <div class="clear">             	        	
                        </div>
                        
                    </div>

			
			
	<!-- 2222222222222222222222222222222 -->	
</div>
	<!-- 2222222222222222222222222222222 -->			

<div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Fun Videos</h1>
                    </div>
                    <div class="templatemo_post_mid">
                    	
                        <!-- cccccccccccc -->

                 <%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select file_name from "+server+" where category='fun'");
		%><table align=center><%
		while(rs.next())
		{
			
			%>
			<td>
			<table height=105 width=105	 background="images/play.png">
			<tr><td align=center><a href="video.jsp?fileN=<%=rs.getString(1)%>"><u><font color="#cc0000" size= 5><u><b><%=rs.getString(1)%></u></b></font></u></a>
			</td></tr></table>
			
			
			<%
		}	
		}
		catch(Exception e){System.out.println(e);}
%>
					
		</td></tr></table>			
					<br><br>

                        <!-- cccccccccccc -->
                    
                        <div class="clear">             	        	
                        </div>
                        
                    </div>

			
			
	<!-- 2222222222222222222222222222222 -->	<!-- 2222222222222222222222222222222 -->			

<div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Bollywood Videos</h1>
                    </div>
                    <div class="templatemo_post_mid">
                    	
                        <!-- cccccccccccc -->

                 <%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select file_name from "+server+" where category='bol'");
		%><table align=center><%
		while(rs.next())
		{
			
			%>
			<td>
			<table height=105 width=105	 background="images/play.png">
			<tr><td align=center><a href="video.jsp?fileN=<%=rs.getString(1)%>"><u><font color="#cc0000" size= 5><u><b><%=rs.getString(1)%></u></b></font></u></a>
			</td></tr></table>
			
			
			<%
		}	
		}
		catch(Exception e){System.out.println(e);}
%>
					
		</td></tr></table>			
					<br><br>

                        <!-- cccccccccccc -->
                    
                        <div class="clear">             	        	
                        </div>
                        
                    </div>

			
			
	<!-- 2222222222222222222222222222222 -->	<!-- 2222222222222222222222222222222 -->			

<div class="templatemo_post">
                
                	<div class="templatemo_post_top">
                    	<h1>Other Videos</h1>
                    </div>
                    <div class="templatemo_post_mid">
                    	
                        <!-- cccccccccccc -->

                 <%try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loadbal","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select file_name from "+server+" where category='oth'");
		%><table align=center><%
		while(rs.next())
		{
			
			%>
			<td>
			<table height=105 width=105	 background="images/play.png">
			<tr><td align=center><a href="video.jsp?fileN=<%=rs.getString(1)%>"><u><font color="#cc0000" size= 5><u><b><%=rs.getString(1)%></u></b></font></u></a>
			</td></tr></table>
			
			
			<%
		}	
		}
		catch(Exception e){System.out.println(e);}
%>
					
		</td></tr></table>			
					<br><br>

                        <!-- cccccccccccc -->
                    
                        <div class="clear">             	        	
                        </div>
                        
                    </div>

			
			
	<!-- 2222222222222222222222222222222 -->	
			</DIV></div></div></div>	<div id="templatemo_right_section">
            	
                <div class="templatemo_section_box">
                	<div class="templatemo_section_box_top">
                    	<h1>Load Balancer Architecture</h1>
                    </div>
					<div class="templatemo_section_box_mid">
                   		
						<img src="images/main.png" width="260" height="200" border="0" alt="">
                      <div class="clear">&nbsp;</div>
					</div>
                  <div class="templatemo_section_box_bottom"></div>
                </div>
              
            	


                <div class="templatemo_section_box">
                	<div class="templatemo_section_box_top">
                    	<h1>Cloud Partitioning Architecture</h1>
                    </div>
					<div class="templatemo_section_box_mid">
                   		
						<img src="images/main2.png" width="260" height="200" border="0" alt="">
                      <div class="clear">&nbsp;</div>
					</div>
                  <div class="templatemo_section_box_bottom"></div>
                </div>
              
             
                    
                
            
            </div> 
 

        </div>
	</div><!-- end of background middle-->
    
    <div id="templatemo_bottom_panel">
    	<div id="templatemo_bottom_section">
        	<div class="templatemo_bottom_section_box">
            	<div class="top">
                  Job Partition</div>
                <div class="body">
                    <ul>
                    
                    	<li><u>Idle:</u> When the percentage of idle nodes exceeds ,
change to idle status.</a></li>
                        <li><u>Normal:</u> When the percentage of the normal nodes
exceeds , change to normal load status</a></li>
<li><u>Overload:</u> When the percentage of the overloaded
nodes exceeds 
 , change to overloaded status.</a></li>

                  
                    </ul>
                </div>
            </div>
            <div class="templatemo_bottom_section_box">
            	<div class="top">
                  References</div>
                <div class="body">
                   <ul>
				   <li><a href="http://libra.msra.cn/Keyword/6051/cloud-computing?query=cloud%20computing">Microsoft Academic Research, Cloud computing</a>


                     <li> <a href="http://www.rightscale.com/info_center/white-papers/Load-Balancing-in-the-Cloud.pdf">
Load Balancing in the cloud, by Brian Adler</a>

                      <li><a href="http://searchcloudcomputing.techtarget.com/definition/public-cloud">A Rouse Public cloud,</a><br />
                     </ul>                   
              </div>
            </div>
            <div class="templatemo_bottom_section_box">
            	<div class="top">Thanks to</div>
                <div class="body">
                    <p></p>

                    <p><a href="http://validator.w3.org/check?uri=referer"><img height="31" alt="Valid XHTML 1.0 Transitional" src="http://www.w3.org/Icons/valid-xhtml10" width="88" vspace="8" border="0" /></a><a href="http://jigsaw.w3.org/css-validator/check/referer"><img alt="Valid CSS!" src="http://jigsaw.w3.org/css-validator/images/vcss-blue" vspace="8" border="0" /></a>
					<img src="images/google.jpg" width="88" height="31" border="0" alt="">
					<img src="images/wiki.jpg" width="88" height="41" border="0" alt=""></p>
                </div>
            </div>
            <div id="templatemo_footer_section">
        		
        	</div>
        </div>

    </div>

<div align=center><a href="">Copyright © 2013-2014  </a></div></body>
<!--  Designed by w w w . t e m p l a t e m o . c o m  --> 
</html>