<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de Productos en Aula 6</title>
      </head>
      <body>
        <h1>Lista de Productos en Aula 6</h1>
        <ul>
          <xsl:apply-templates select="//producte[lloc/aula = '6']"/>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="producte">
    <li>
      <strong>Código:</strong> <xsl:value-of select="@codi"/><br/>
      <strong>Nombre:</strong> <xsl:value-of select="nom"/><br/>
      <strong>Peso:</strong> <xsl:value-of select="concat(pes,' ',pes/@unitat)"/>
    </li>
  </xsl:template>
</xsl:stylesheet>