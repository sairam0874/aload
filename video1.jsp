 <table border=9>
 <tr>
	<td>
	<%String file_name=request.getParameter("id");%>
	 <video width="330" height="200" controls="controls" autoplay="autoplay">
	  <source src="video\<%=file_name%>" type="video/mp4" />
	  
	  <source src="video\<%=file_name%>" type="video/ogg" />
	  <source src="video\<%=file_name%>" type="video/webm" />
	  <object data="video\<%=file_name%>" width="330" height="240">
		<embed src="video\<%=file_name%>" width="320" height="240" />
	  </object> 
	</video>


	
	</td>
 </tr>
 </table>
