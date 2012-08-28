<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output
	omit-xml-declaration="yes"
	encoding="UTF-8"
	method="text"
	version=""
	doctype-public=""
	doctype-system=""
	indent="no" />

<xsl:template match="/"><xsl:apply-templates/></xsl:template>
<xsl:template match="lines"><xsl:apply-templates/></xsl:template>

<xsl:template match="line">
	<xsl:apply-templates select="src"/><xsl:text>&#10;</xsl:text>
	<xsl:apply-templates select="lojban"/>
	<xsl:text>&#10;(</xsl:text>
	<xsl:apply-templates select="japanese"/>
	<xsl:text>)</xsl:text>
</xsl:template>
</xsl:stylesheet>
