<xsl:stylesheet version="1.0" 
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
  <link rel="stylesheet" href="pedido.css" />
  <body>
   <h1>Pedido</h1>
   <table>
   <tr>
    <th>Codigo</th>
    <th>Nombre</th>
    <th>Cantidad</th>
   </tr>
  <xsl:apply-templates />
  <xsl:apply-templates />
  <xsl:apply-templates />
   </table>
   Total de productos: 
   <xsl:value-of select="sum(//cantidad)" />
  </body>
 </html>
</xsl:template>

<xsl:template match="producto">
 <tr>
 <td><xsl:value-of select="@codigo" /></td>
 <td><xsl:value-of select="nombre" /></td>
 <td><xsl:value-of select="cantidad" /></td>
 </tr>
</xsl:template>
 
</xsl:stylesheet>
