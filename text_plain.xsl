<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

<xsl:output
	omit-xml-declaration="no"
	encoding="UTF-8"
	method="text"
	version="1.0"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	indent="no" />

<xsl:template match="/">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="lines">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="line">
	<xsl:apply-templates select="lojban"/>
</xsl:template>

</xsl:stylesheet>
