<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes"/>

	<!-- Bases on http://www.leancrew.com/all-this/2012/05/xslt-of-course/ -->

	<!-- First, get everything. -->
	<xsl:template match="node() | @*">
	   <xsl:copy>
	       <xsl:apply-templates select="node() | @*"/>
	   </xsl:copy>
	</xsl:template>

	<!-- Then restrict to just certain items. -->
	<xsl:template match="/rss/channel/item">
	   <xsl:if test="title[contains(., $title)]"><item><xsl:apply-templates select="node()" /></item></xsl:if>
	</xsl:template>
		
</xsl:stylesheet>