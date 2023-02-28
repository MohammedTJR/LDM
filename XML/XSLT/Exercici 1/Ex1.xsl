<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="producte">
        <li>
            <xsl:text>Producte </xsl:text>
            <xsl:value-of select="@codi"/>
            <ul>
                <li>Nom: <xsl:value-of select="nom"/></li>
                <li>Pes: <xsl:value-of select="pes"/> <xsl:value-of select="pes/@unitat"/></li>
            </ul>
        </li>
    </xsl:template>
    
</xsl:stylesheet>