<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
<xsl:template match="/">

<html>
<head>
	<title>Book Table</title>
</head>
<body style="color:white">
	<h2 style="color:black">Book Table</h2>
	<table class="centre" border="1" style="border-collapse:collapse">
		<tr bgcolor="brown">
			<th>Title</th>
			<th>Author</th>
			<th>Genre</th>
			<th>Copyright</th>
			<th>Edition</th>
			<th>ISBN</th>
			<th>Publisher</th>
			<th>Price</th>
		</tr>

		<xsl:for-each select="/bookdetails/book">

		<tr>
			<td bgcolor="orange"><xsl:value-of select="title"/></td>
			<td bgcolor="blue"><b><xsl:value-of select="author"/></b></td>
			<td bgcolor="grey"><xsl:value-of select="genre"/></td>
			<td bgcolor="orange"><xsl:value-of select="copyright"/></td>
			<td bgcolor="grey"><xsl:value-of select="edition"/></td>
			<td bgcolor="purple"><xsl:value-of select="isbn"/></td>
			<td bgcolor="orange"><xsl:value-of select="publisher"/></td>
			<td bgcolor="grey"><xsl:value-of select="price"/></td>
		</tr>
		</xsl:for-each>

	</table>
</body>

</html>
</xsl:template>
</xsl:stylesheet> 