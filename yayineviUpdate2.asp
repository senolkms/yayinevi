<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%yayineviId=request.form("yayineviId1")
yayineviAd=request.form("yayineviAd1")
yayineviTel=request.form("yayineviTel1")
yayineviMail=request.form("yayineviMail1")
yayineviYil=request.form("yayineviYil1")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("UPDATE tblYayinevi SET yayineviAd='" & yayineviAd & "', yayineviTel='" & yayineviTel & "', yayineviMail='" & yayineviMail & "', yayineviYil='" & yayineviYil & "' WHERE yayineviId='" & yayineviId & "'")%>
<script>alert("Kayýt güncellendi.")
window.location = 'index.asp'</script>
</body>
</html>
