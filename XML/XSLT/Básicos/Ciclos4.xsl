<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>GRADO SUPERIOR</h1>
                <ul>
                    <xsl:apply-templates select="ciclos/ciclo[grado='Superior']"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo[grado='Superior']">
        <li>
            <u>
                <xsl:value-of select="@codigo"/>: <xsl:value-of select="nombre"/>
            </u>
        </li>
    </xsl:template>

</xsl:stylesheet>