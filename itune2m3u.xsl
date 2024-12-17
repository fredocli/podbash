<xsl:stylesheet version="1.0" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>#EXTM3U&#xa;</xsl:text>
        <xsl:apply-templates select="//item" />
    </xsl:template>
    <xsl:template match="//item">
        <xsl:text>#EXTINF:</xsl:text>
        <xsl:value-of select="itunes:duration" /><xsl:text>,</xsl:text>
        <xsl:value-of select="title" /><xsl:text>&#xa;</xsl:text>
        <xsl:value-of select="enclosure/@url" /><xsl:text>&#xa;</xsl:text>
    </xsl:template>
</xsl:stylesheet>