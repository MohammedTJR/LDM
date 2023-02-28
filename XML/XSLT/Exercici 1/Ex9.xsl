<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Productes edifici A amb pes menys de 7kg</title>
      </head>
      <body>
        <h1>Productes edifici A amb pes menys de 7kg</h1>
        <table>
          <tr>
            <th>Nom</th>
            <th>Pes</th>
            <th>Aula</th>
          </tr>
          <xsl:apply-templates select="//producte[lloc/@edifici='A' and pes &lt;= 7000]"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="producte">
    <tr>
      <td><xsl:value-of select="nom"/></td>
      <td><xsl:value-of select="pes"/> <xsl:value-of select="pes/@unitat"/></td>
      <td><xsl:value-of select="lloc/aula"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>