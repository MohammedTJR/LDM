<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="ciclos/ciclo/nombre"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="nombre">
        <p>
            <strong>
                <xsl:value-of select="."/>
            </strong>
        </p>
    </xsl:template>
</xsl:stylesheet>