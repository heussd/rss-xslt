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

	<xsl:template match="rss/channel">
	    <xsl:copy>
	        <xsl:apply-templates select="@* | node()" />
        	 <image>
		      <url>http://www.dropbox.com/s/tzhy6y55jvgg68i/1306801.jpg</url>
		      <link>http://www.dropbox.com/s/tzhy6y55jvgg68i/1306801.jpg</link>
		    </image>
	    </xsl:copy>
	</xsl:template>
		
</xsl:stylesheet>