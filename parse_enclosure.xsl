<xsl:stylesheet version="1.0" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>

		<xsl:template match="/rss/channel">
			<xsl:for-each select="./item">
    			<xsl:variable name="length" select="enclosure/@length" />
				<xsl:variable name="k" select="floor($length div 1024)"/>
    			<xsl:variable name="m" select="(floor(($k div 1024)*100)div 100)"/>

				<xsl:value-of select="title" /><xsl:text>&#9;</xsl:text>
				<xsl:value-of select="enclosure/@url"/><xsl:text>&#9;</xsl:text>
				<xsl:value-of select="$m"/><xsl:text> MB</xsl:text> <xsl:text>&#9;</xsl:text>
				<xsl:value-of select="itunes:duration" /><xsl:text>&#9;</xsl:text>
				<xsl:value-of select="description"/><xsl:text>&#9;</xsl:text>
				<xsl:text>&#10;</xsl:text>

			</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>