<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
<museus>
<xsl:apply-templates select="museus/museu"/>
</museus>
</xsl:template>
<xsl:template match="museu">
<museu>
<nom>
<xsl:value-of select="@nom"/>
</nom>
<ciutat>
<xsl:value-of select="@ciutat"/>
</ciutat>
<pais>
<xsl:value-of select="@pais"/>
</pais>
</museu>
</xsl:template>
</xsl:stylesheet>