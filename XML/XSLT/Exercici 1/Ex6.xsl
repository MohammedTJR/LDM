<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Productes de l'edifici A:</h2>
        <table>
          <tr>
            <th>nom</th>
            <th>pes</th>
            <th>aula</th>
          </tr>
          <xsl:apply-templates select="//producte[lloc/@edifici='A']"/>
        </table>
        <h2>Productes de l'edifici B:</h2>
        <table>
          <tr>
            <th>nom</th>
            <th>pes</th>
            <th>aula</th>
          </tr>
          <xsl:apply-templates select="//producte[lloc/@edifici='B']"/>
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
        <xsl:value-of select="lloc/aula"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
