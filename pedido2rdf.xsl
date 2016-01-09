<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" 
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	 xmlns:p="http://productos.org#">

<xsl:output method="text" />
	 
<xsl:template match="/">
<xsl:text>
<![CDATA[
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix : <http://productos.org#> .
]]>
</xsl:text>
<xsl:apply-templates />

</xsl:template>

<xsl:template match="producto">
 :<xsl:value-of select="@codigo" /> :nombre "<xsl:value-of select="nombre"/>" .
 :<xsl:value-of select="@codigo" /> :cantidad  <xsl:value-of select="cantidad"/> .
 :<xsl:value-of select="@codigo" /> :precio <xsl:value-of select="precio"/> .
 :<xsl:value-of select="@codigo" /> :ciudad <![CDATA[<http://dbpedia.org/resource/]]><xsl:value-of select="ciudad"/>&gt; .
</xsl:template>

</xsl:stylesheet>