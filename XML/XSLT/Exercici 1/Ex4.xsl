<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <inventari>
      <xsl:apply-templates select="//producte[lloc/@edifici='B']"/>
    </inventari>
  </xsl:template>

  <xsl:template match="producte">
    <producte codi="{@codi}">
      <pes unitat="{pes/@unitat}">
        <xsl:value-of select="pes"/>
      </pes>
      <nom>
        <xsl:value-of select="nom"/>
      </nom>
      <lloc edifici="{lloc/@edifici}">
        <aula>
          <xsl:value-of select="lloc/aula"/>
        </aula>
      </lloc>
    </producte>
  </xsl:template>

</xsl:stylesheet>