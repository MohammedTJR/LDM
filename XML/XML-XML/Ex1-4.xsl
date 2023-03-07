<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/museus">
    <ciutats>
        <xsl:for-each select="museu">
            <xsl:variable name="currentCity" select="ciutat"/>
            <xsl:if test="not(preceding::museu/ciutat = $currentCity)">
                <ciutat>
                    <xsl:attribute name="nom">
                        <xsl:value-of select="$currentCity"/>
                    </xsl:attribute>
                    <xsl:attribute name="pais">
                        <xsl:value-of select="pais"/>
                    </xsl:attribute>
                    <xsl:for-each select="../museu[ciutat = $currentCity]">
                        <museu>
                            <xsl:value-of select="nom"/>
                        </museu>
                    </xsl:for-each>
                </ciutat>
            </xsl:if>
        </xsl:for-each>
    </ciutats>
</xsl:template>

</xsl:stylesheet>