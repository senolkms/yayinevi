<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%yazarId=request.form("yazarId1")
yazarAd=request.form("yazarAd1")
yazarSad=request.form("yazarSad1")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("UPDATE tblYazar SET yazarAd='" & yazarAd & "', yazarSoyad='" & yazarSad & "' WHERE yazarId='" & yazarId & "'")%>
<script>alert("Kayýt güncellendi.")
window.location = 'index.asp'</script>
</body>
</html>
