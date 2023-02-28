<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>

  <xsl:template match="/">
    <xsl:text>Productes a l'aula 6:</xsl:text>
    <xsl:apply-templates select="//producte[lloc/aula='6']"/>
  </xsl:template>

  <xsl:template match="producte">
    <xsl:text>
- </xsl:text>
    <xsl:value-of select="nom"/>
  </xsl:template>

</xsl:stylesheet>
