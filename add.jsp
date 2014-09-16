<%@include file="header.jsp" %>

<br><br>
<script type="text/javascript">

function validation()

{
var b=document.a.file.value;
if(b=="")
{
alert("Enter File Name");
document.a.file.focus();
return false;
}

var v=document.a.video.value;
if(v=="")
{
alert("Choose file");
document.a.video.focus();
return false;
}
}
</script>

              <%
 String message=request.getParameter("id");
 if(message!=null && message.equalsIgnoreCase("succ"))
 {
 out.println("<font color='blue' size=4><blink><B>Video has been uploaded !</blink></font>");
 }
%>
<BR><BR><BR>


<form name="a" action="upload_video1.jsp" onSubmit="return validation()">


 

<center>

<table><tr><td>
<font color="#993366" face="Times New Roman, Times, serif" size="5">
File Name<br>
<input type="text" name="file" value=""></font>&nbsp;single_word_only
<tr><td><tr><td><br><br>
<tr><td><font color="#993366" face="Times New Roman, Times, serif" size="5">
	Choose File	<br>
	<input type="file" name="video"><td><input type="image" src="images/upload.png" height=70 alt="Submit Form" />
<tr><td><tr><td><tr><td><br><br>

<tr><td>
<font color="#993366" face="Times New Roman, Times, serif" size="5">Category<br>
<select name="cat">
	<option value="mov">Movies
	<option value="cri">Cricket
	<option value="fun">Fun
	<option value="bol">Bollywood
	<option value="oth">Other

</select>
<tr><td><tr><td><tr><td><br><br>

<tr><td>
<input type="checkbox" name="c1" checked>&nbsp;<font size=5 color=#990099>Cloud1&nbsp;&nbsp;<input type="checkbox" name="c2" checked>&nbsp;Cloud2&nbsp;&nbsp;<input type="checkbox" name="c3" checked>&nbsp;Cloud3&nbsp;&nbsp;


</table>

</form>


<br><br><br><br>
<%@include file="footer.jsp" %>