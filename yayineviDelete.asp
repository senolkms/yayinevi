d<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%yayineviId=request.queryString("yayineviId")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("DELETE FROM tblYayinevi WHERE yayineviId='" & yayineviId & "'")%>
<script>alert("<%=yayineviId%> IDli Kayýt silindi.")
window.location = 'index.asp'</script>
</body>
</html>
