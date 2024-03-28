<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function yayineviKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('yayineviId1').value=='')
			{
			alert("Yayýnevi ID Alaný Boþ Olamaz!");
			document.getElementById('yayineviId1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviAd1').value=='')
			{
			alert("Yayýnevi AD Alaný Boþ Olamaz!");
			document.getElementById('yayineviAd1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviTel1').value=='')
			{
			alert("Yayýnevi TELEFON Alaný Boþ Olamaz!");
			document.getElementById('yayineviTel1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviMail1').value=='')
			{
			alert("Yayýnevi e-MAIL Alaný Boþ Olamaz!");
			document.getElementById('yayineviMail1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviYil1').value=='')
			{
			alert("Yayýnevi KURULUÞ YILI Alaný Boþ Olamaz!");
			document.getElementById('yayineviYil1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>
<%yayineviId=request.querystring("yayineviId")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblYayinevi WHERE yayineviId='" & yayineviId & "'")%>
<form name="register"  method="post" onsubmit="return yayineviKontrol()" action="yayineviUpdate2.asp">
<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Yayýnevi Kaydý Güncelleme</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>ID</td>
		<td><input type="Text" id="yayineviId1" name="yayineviId1" value="<%=rs("yayineviId")%>" readonly></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Ad</td>
		<td><input type="Text" id="yayineviAd1" name="yayineviAd1" value="<%=rs("yayineviAd")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Telefon</td>
		<td><input type="Text" id="yayineviTel1" name="yayineviTel1" value="<%=rs("yayineviTel")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>e-Mail</td>
		<td><input type="Text" id="yayineviMail1" name="yayineviMail1" value="<%=rs("yayineviMail")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Yýl</td>
		<td><input type="Text" id="yayineviYil1" name="yayineviYil1" value="<%=rs("yayineviYil")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Güncelle"></td>
	</tr>
</table>
</form>
</body>
</html>
