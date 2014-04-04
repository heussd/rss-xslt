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
	  <item><xsl:apply-templates select="node()" />
	   <enclosure>
      	<xsl:attribute name="url">
		    <xsl:value-of select="link" />
		</xsl:attribute>
		<xsl:attribute name="length">0</xsl:attribute>
      </enclosure>
      <guid isPermaLink="true"><xsl:value-of select="link" /></guid>
	  </item>
	</xsl:template>
		
</xsl:stylesheet>