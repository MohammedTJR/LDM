<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <table>
          <tr>
            <th>nom</th>
            <th>pes</th>
            <th>lloc/aula</th>
          </tr>
          <xsl:apply-templates select="//producte"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="producte">
    <tr>
      <td>
        <xsl:value-of select="nom"/>
      </td>
      <td>
        <xsl:value-of select="concat(pes,' ',pes/@unitat)"/>
      </td>
      <td>
        <xsl:value-of select="concat(lloc/@edifici,'-',lloc/aula)"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
