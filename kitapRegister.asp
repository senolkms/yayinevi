<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%kitapId=request.form("kitapId1")
kitapAd=request.form("kitapAd1")
kitapBasimYili=request.form("kitapBasimYili1")
kitapYazarId=request.form("kitapYazarId1")
kitapYayineviId=request.form("kitapYayineviId1")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblKitap WHERE kitapId=" & kitapId)
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblKitap (kitapId, kitapAd, kitapBasimYili, yazarId, yayineviId) VALUES(" & kitapId & ", '" & kitapAd & "', '" & kitapBasimYili & "', '" & yazarId & "', '" & yayineviId & "')")%>
	<script>alert("Kayýt gerçekleþti.")
	window.location = 'index.asp'</script>
<%else%>
	<script>alert("Bu ID baþka bir kitap tarafýndan kullanýlmaktadýr.")
	window.location = 'index.asp'</script>
<%end if%>
</body>
</html>
