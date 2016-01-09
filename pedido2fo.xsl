<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="/">
 <fo:root><fo:layout-master-set>
    <fo:simple-page-master master-name="maestro">
      <fo:region-body margin="2cm"/>
    </fo:simple-page-master>
  </fo:layout-master-set>

  <fo:page-sequence master-reference="maestro">
    <fo:flow flow-name="xsl-region-body">
       <xsl:apply-templates />
    </fo:flow>
  </fo:page-sequence>
</fo:root></xsl:template>

<xsl:template match="producto">
 <fo:block><xsl:value-of select="nombre" />,
  <xsl:value-of select="cantidad" />,
  <xsl:value-of select="@codigo" /></fo:block>
</xsl:template>
</xsl:stylesheet>
