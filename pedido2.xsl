<xsl:stylesheet version="1.0" 
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
  <link rel="stylesheet" href="pedido.css" />
  <body>
   <h1>Productos pedidos</h1>
   <table>
   <xsl:apply-templates />
   </table>
  </body>
 </html>
</xsl:template>

<xsl:template match="producto">
 <tr><td><xsl:value-of select="nombre" /></td>
     <td>
	 <img alt="{@codigo}" 
	      src="imagenes/{@codigo}.jpg" 
		  width="100px" 
		  height="100px"/></td>
 </tr>
</xsl:template>
 
</xsl:stylesheet>
