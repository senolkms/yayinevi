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

<%Set rs= conn.Execute("SELECT * FROM tblYazar WHERE yazarId='" & yazarId & "'")
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblYazar (yazarId, yazarAd, yazarSoyad) VALUES('" & yazarId & "', '" & yazarAd & "', '" & yazarSad & "')")%>
	<script>alert("Kay�t ger�ekle�ti.")
	window.location = 'index.asp'</script>
<%else%>
	<script>alert("Bu ID ba�ka bir yazar taraf�ndan kullan�lmaktad�r.")
	window.location = 'index.asp'</script>
<%end if%>
</body>
</html>
