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

<%Set rs= conn.Execute("SELECT * FROM tblYayinevi WHERE yayineviId='" & yayineviId & "'")
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblYayinevi (yayineviId, yayineviAd, yayineviTel, yayineviMail, yayineviYil) VALUES('" & yayineviId & "', '" & yayineviAd & "', '" & yayineviTel & "', '" & yayineviMail & "', '" & yayineviYil & "')")%>
	<script>alert("Kayýt gerçekleþti.")
	window.location = 'index.asp'</script>
<%else%>
	<script>alert("Bu ID baþka bir yayinevi tarafýndan kullanýlmaktadýr.")
	window.location = 'index.asp'</script>
<%end if%>
</body>
</html>
