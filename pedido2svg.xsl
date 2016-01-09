<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:svg="http://www.w3.org/2000/svg">

<xsl:template match="/">
 <svg:svg><xsl:apply-templates /></svg:svg>
</xsl:template>

<xsl:template match="producto">
 <svg:text y="{position()*20}" x="10" font-size="20">
    <xsl:value-of select="nombre" />
 </svg:text>

 <svg:rect y="{position()*20-10}" x="300" 
           width="{cantidad * 10}" height="10" fill="blue"/>
</xsl:template>
</xsl:stylesheet>
