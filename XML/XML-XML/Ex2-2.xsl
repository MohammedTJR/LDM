<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <museus>
        <xsl:apply-templates/>
    </museus>
</xsl:template>

<xsl:template match="museu">
<museu>
<xsl:attribute name="ubicacio">
<xsl:value-of select="@ciutat"/>
(<xsl:value-of select="@pais"/>
)</xsl:text>
</xsl:attribute>
<xsl:value-of select="."/>
</museu>
</xsl:template>
</xsl:stylesheet>