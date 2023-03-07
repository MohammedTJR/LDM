<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <museus>
        <xsl:apply-templates/>
    </museus>
</xsl:template>

<xsl:template match="museu">
    <ciudad>
        <nom><xsl:value-of select= "ciudad"/></nom>
        <pais><xsl:value-of select= "pais"/></pais>
        <museu><xsl:value-of select= "nom"/></museu>
    </ciudad>
</xsl:template>

</xsl:stylesheet>