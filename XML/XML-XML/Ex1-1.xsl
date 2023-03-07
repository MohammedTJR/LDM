<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <museus>
        <xsl:apply-templates/>
    </museus>
</xsl:template>

<xsl:template match="museu">
    <museu>
        <xsl:attribute name="nom"><xsl:value-of select="nom" /></xsl:attribute>
        <xsl:attribute name="ciudad"><xsl:value-of select="ciudad" /></xsl:attribute>
        <xsl:attribute name="pais"><xsl:value-of select="pais" /></xsl:attribute>
    </museu>
</xsl:template>

</xsl:stylesheet>