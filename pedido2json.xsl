<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" />
  
<xsl:template match="/">[ 
<xsl:for-each select="//producto">{ "nombre": "<xsl:value-of select="nombre" />",
 "cantidad": <xsl:value-of select="cantidad" /> }<xsl:if test="position()!=last()">,
</xsl:if></xsl:for-each>
]
</xsl:template>

</xsl:stylesheet>
