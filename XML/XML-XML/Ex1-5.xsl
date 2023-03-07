<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/museus">
        <paissos>
            <xsl:for-each select="museu">
                <xsl:sort select="pais" order="ascending"/>
                <xsl:if test="generate-id() = generate-id(key('museus-by-pais', pais)[1])">
                    <xsl:variable name="pais" select="pais"/>
                    <pais nom="{$pais}">
                        <xsl:for-each select="key('museus-by-pais', pais)">
                            <museu museu="{nome}" ciutat="{ciutat}"/>
                        </xsl:for-each>
                    </pais>
                </xsl:if>
            </xsl:for-each>
        </paissos>
    </xsl:template>

    <xsl:key name="museus-by-pais" match="museu" use="pais"/>
    
</xsl:stylesheet>
