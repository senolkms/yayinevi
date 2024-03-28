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
			alert("Yazar ID Alan� Bo� Olamaz!");
			document.getElementById('yazarId1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yazarAd1').value=='')
			{
			alert("Yazar AD Alan� Bo� Olamaz!");
			document.getElementById('yazarAd1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yazarSad1').value=='')
			{
			alert("Yazar SOYAD Alan� Bo� Olamaz!");
			document.getElementById('yazarSad1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	function yayineviKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('yayineviId1').value=='')
			{
			alert("Yay�nevi ID Alan� Bo� Olamaz!");
			document.getElementById('yayineviId1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviAd1').value=='')
			{
			alert("Yay�nevi AD Alan� Bo� Olamaz!");
			document.getElementById('yayineviAd1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviTel1').value=='')
			{
			alert("Yay�nevi TELEFON Alan� Bo� Olamaz!");
			document.getElementById('yayineviTel1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviMail1').value=='')
			{
			alert("Yay�nevi e-MAIL Alan� Bo� Olamaz!");
			document.getElementById('yayineviMail1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('yayineviYil1').value=='')
			{
			alert("Yay�nevi KURULU� YILI Alan� Bo� Olamaz!");
			document.getElementById('yayineviYil1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	function kitapKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('kitapId1').value=='')
			{
			alert("Kitap ID Alan� Bo� Olamaz!");
			document.getElementById('kitapId1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('kitapAd1').value=='')
			{
			alert("Kitap AD Alan� Bo� Olamaz!");
			document.getElementById('kitapAd1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('kitapBasimYili1').value=='')
			{
			alert("Kitap BASIM YILI Alan� Bo� Olamaz!");
			document.getElementById('kitapBasimYili1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('kitapYazarId1').value=='')
			{
			alert("Kitap YAZAR B�LG�S� Alan� Bo� Olamaz!");
			document.getElementById('kitapYazarId1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('kitapYayineviId1').value=='')
			{
			alert("Kitap K�TAP B�LG�S� Alan� Bo� Olamaz!");
			document.getElementById('kitapYayineviId1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>
<table width="950px" align="center">
	<tr>
		<td valign="top">
		<!--yazar i�lemleri-->
			<form name="yazar" method="post" onsubmit="return yazarKontrol()" action="yazarRegister.asp">
			<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Yazar ��lemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>ID</td>
					<td><input type="Text" id="yazarId1" name="yazarId1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ad</td>
					<td><input type="Text" id="yazarAd1" name="yazarAd1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Soyad</td>
					<td><input type="Text" id="yazarSad1" name="yazarSad1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kaydet"></td>
				</tr>
			</table>
			</form><br>
			<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="4"><font color="#ff0000" style="font-weight: bold;">Kay�tl� Yazarlar</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>Yazar ID</b></td>
					<td><b>Yazar Ad</b></td>
					<td><b>Yazar Soyad</b></td>
					<td><b>��lemler</b></td>
				</tr>					
				<%Set conn = Server.CreateObject("ADODB.Connection")
				conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
				<%Set rs= conn.Execute("SELECT * FROM tblYazar ORDER BY yazarId")%>
				<%Do while Not rs.eof%>
					<tr height="40px" bgcolor="#ffffff" align="center">
						<td><%=rs("yazarId")%></td>
						<td><%=rs("yazarAd")%></td>
						<td><%=rs("yazarSoyad")%></td>
						<td><a href="yazarDelete.asp?yazarId=<%=rs("yazarId")%>">Sil</a> / <a href="yazarUpdate.asp?yazarId=<%=rs("yazarId")%>">G�ncelle</a></td>
					</tr>
				<%rs.MoveNext
				Loop%>
				</tr>
			</table>
		</td>
		<td valign="top">
		<!--yay�nevi i�lemleri-->
			<form name="yazar" method="post" onsubmit="return yayineviKontrol()" action="yayineviRegister.asp">
			<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Yay�nevi ��lemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>ID</td>
					<td><input type="Text" id="yayineviId1" name="yayineviId1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ad</td>
					<td><input type="Text" id="yayineviAd1" name="yayineviAd1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Telefon</td>
					<td><input type="Text" id="yayineviTel1" name="yayineviTel1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>e-Mail</td>
					<td><input type="Text" id="yayineviMail1" name="yayineviMail1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Y�l</td>
					<td><input type="Text" id="yayineviYil1" name="yayineviYil1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kaydet"></td>
				</tr>
			</table>
			</form><br>
			<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="6"><font color="#ff0000" style="font-weight: bold;">Kay�tl� Yay�nevleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>Yay�nevi ID</b></td>
					<td><b>Yay�nevi Ad</b></td>
					<td><b>Yay�nevi Tel</b></td>
					<td><b>Yay�nevi e-Mail</b></td>
					<td><b>Yay�nevi Y�l</b></td>
					<td><b>��lemler</b></td>
				</tr>					
				<%Set conn = Server.CreateObject("ADODB.Connection")
				conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
				<%Set rs= conn.Execute("SELECT * FROM tblYayinevi ORDER BY yayineviId")%>
				<%Do while Not rs.eof%>
					<tr height="40px" bgcolor="#ffffff" align="center">
						<td><%=rs("yayineviId")%></td>
						<td><%=rs("yayineviAd")%></td>
						<td><%=rs("yayineviTel")%></td>
						<td><%=rs("yayineviMail")%></td>						
						<td><%=rs("yayineviYil")%></td>
						<td><a href="yayineviDelete.asp?yayineviId=<%=rs("yayineviId")%>">Sil</a> / <a href="yayineviUpdate.asp?yayineviId=<%=rs("yayineviId")%>">G�ncelle</a></td>
					</tr>
				<%rs.MoveNext
				Loop%>
				</tr>
			</table>
		</td>
		<td valign="top">
		<!--kitap i�lemleri-->
			<form name="yazar" method="post" onsubmit="return kitapKontrol()" action="kitapRegister.asp">
			<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Kitap ��lemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>ID</td>
					<td><input type="Text" id="kitapId1" name="kitapId1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ad</td>
					<td><input type="Text" id="kitapAd1" name="kitapAd1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Bas�m Y�l�</td>
					<td><input type="Text" id="kitapBasimYili1" name="kitapBasimYili1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Yazar</td>
					<td>					
						<%Set conn = Server.CreateObject("ADODB.Connection")
						conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
						<%Set rs= conn.Execute("SELECT * FROM tblYazar ORDER BY yazarId")%>
						<select id="kitapYazarId1" name="kitapYazarId1">
							<option>Yazar Se�iniz</option>
						<%Do while Not rs.eof%>
							<option value="<%=rs("yazarId")%>"><%=rs("yazarAd")%>&nbsp;<%=rs("yazarSoyad")%></option>
						<%rs.MoveNext
						Loop%>
						</select>
					</td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Yay�nevi</td>
					<td>					
						<%Set conn = Server.CreateObject("ADODB.Connection")
						conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
						<%Set rs= conn.Execute("SELECT * FROM tblYayinevi ORDER BY yayineviId")%>
						<select id="kitapYayineviId1" name="kitapYayineviId1">
							<option>Yay�nevi Se�iniz</option>
						<%Do while Not rs.eof%>
							<option value="<%=rs("yayineviId")%>"><%=rs("yayineviAd")%></option>
						<%rs.MoveNext
						Loop%>
						</select>
					</td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kaydet"></td>
				</tr>
			</table>
			</form><br>
			<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="6"><font color="#ff0000" style="font-weight: bold;">Kay�tl� Kitaplar</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>Kitap ID</b></td>
					<td><b>Kitap Ad</b></td>
					<td><b>Kitap Bas�m Y�l�</b></td>
					<td><b>Kitap Yazar</b></td>
					<td><b>Kitap Yay�nevi</b></td>
					<td><b>��lemler</b></td>
				</tr>					
				<%Set conn = Server.CreateObject("ADODB.Connection")
				conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
				<%Set rs= conn.Execute("SELECT * FROM (tblKitap LEFT JOIN tblYazar ON tblKitap.yazarId=tblYazar.yazarId) LEFT JOIN tblYayinevi ON tblKitap.yayineviId=tblYayinevi.yayineviId ORDER BY kitapId")%>
				<%Do while Not rs.eof%>
					<tr height="40px" bgcolor="#ffffff" align="center">
						<td><%=rs("kitapId")%></td>
						<td><%=rs("kitapAd")%></td>
						<td><%=rs("kitapBasimYili")%></td>
						<td><%=rs("yazarAd")%>&nbsp;<%=rs("yazarSoyad")%></td>
						<td><%=rs("yayineviAd")%></td>
						<td><a href="kitapDelete.asp?kitapId=<%=rs("kitapId")%>">Sil</a> / <a href="kitapUpdate.asp?kitapId=<%=rs("kitapId")%>">G�ncelle</a></td>
					</tr>
				<%rs.MoveNext
				Loop%>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>
