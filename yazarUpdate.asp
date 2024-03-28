<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function yazarKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('yazarId1').value=='')
			{
			alert("Yazar ID Alaný Boþ Olamaz!");
			document.getElementById('yazarId1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yazarAd1').value=='')
			{
			alert("Yazar AD Alaný Boþ Olamaz!");
			document.getElementById('yazarAd1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yazarSad1').value=='')
			{
			alert("Yazar SOYAD Alaný Boþ Olamaz!");
			document.getElementById('yazarSad1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>
<%yazarId=request.querystring("yazarId")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblYazar WHERE yazarId='" & yazarId & "'")%>
<form name="register"  method="post" onsubmit="return yazarKontrol()" action="yazarUpdate2.asp">
<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Yazar Kaydý Güncelleme</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>ID</td>
		<td><input type="Text" id="yazarId1" name="yazarId1" value="<%=rs("yazarId")%>" readonly></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Ad</td>
		<td><input type="Text" id="yazarAd1" name="yazarAd1" value="<%=rs("yazarAd")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Soyad</td>
		<td><input type="Text" id="yazarSad1" name="yazarSad1" value="<%=rs("yazarSoyad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Güncelle"></td>
	</tr>
</table>
</form>
</body>
</html>
