<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body background="world-map.jpg">
<center>
<h2 STYLE="width: 900px; background: cyan; color: Maroon; border: thin solid blue">100 Most Populous Countries</h2>
<h3>
<table border="1" bgcolor ="AliceBlue " align ="center">
  <tr STYLE="color: Maroon ">
      <th width="75">ID</th>		
      <th width="400">Country</th>
      <th width="200">Population</th>
      <th width="200">Percentage of World</th>
   </tr>
<xsl:for-each select="resultset/row">
<xsl:if test="(id mod 2) = 1">
   <tr align="center"  STYLE="background: MintCream ; color: DarkGreen ">
   <td>
         <xsl:value-of select="id"/>
      </td>
         <td>
         <xsl:value-of select="country"/>
      </td>
      <td align = "center">
         <xsl:value-of select="population"/>
      </td>
      <td align = "center">
         <xsl:value-of select="percentageofworld"/>
      </td>
   </tr>
</xsl:if>
<xsl:if test = "(id mod 2) = 0">
   <tr align="center"  STYLE="background: LightCyan ; color: Maroon">
   <td>
         <xsl:value-of select="id"/>
      </td>
      <td>
         <xsl:value-of select="country"/>
      </td>
      <td align = "center">
         <xsl:value-of select="population"/>
      </td>
      <td align = "center">
         <xsl:value-of select="percentageofworld"/>
      </td>
   </tr>
</xsl:if>
</xsl:for-each>
</table>
</h3>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>